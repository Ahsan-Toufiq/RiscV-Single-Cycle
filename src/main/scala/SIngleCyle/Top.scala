package SingleCycle

import chisel3._
import chisel3.util._
import chisel3.util.experimental.loadMemoryFromFile
import scala.io.Source

class Top extends Module {
    val io = IO (new Bundle {
        val out =  Output(UInt(2.W))
    })
    

    val PC = Module(new PC)
    val PC4 = Module(new PC4)
    val RegFile = Module(new RegisterFile)
    val InsMem = Module(new InstructionMemory("/home/ahsan/Desktop/UIT/MERL/RiscV_SingleCycle/InstructionMemory.txt"))
    val ImmeGen = Module(new ImmdValGen)
    val DataMem = Module(new DataMemory)
    val Control = Module(new Control)
    val ALU = Module(new ALU)
    val ALU_Control = Module(new ALU_Control)

    // IGNORE (RQUIRED TO RUN MODULE)
    io.out := PC.io.out

    // Program Counter (PC4) 
    PC.io.in := MuxLookup(Control.io.Next_PC_select , 0.U, Array(
                        0.U -> PC4.io.out ,
                        1.U -> Mux((Control.io.Branch && ALU.io.branch), ImmeGen.io.immd_se , PC4.io.out ),
                        2.U -> ImmeGen.io.immd_se ,
                        3.U -> ((ImmeGen.io.immd_se + RegFile.io.ReadData1.asUInt) & "b1111_1111_1111_1111_1111_1111_1111_1110".U)
                    ))
    PC4.io.pc := PC.io.out

    // Immediate Generator Input Wiring
    ImmeGen.io.instr := InsMem.io.data
    ImmeGen.io.PC := PC.io.out 

    // Instruction Memory Input Wiring
    InsMem.io.address := PC.io.out(11,2)

    // Control Unit Input Wiring
    Control.io.opcode := InsMem.io.data(6,0)
    
    // ALU Control Input Wiring
    ALU_Control.io.func3 := InsMem.io.data(14,12)
    ALU_Control.io.func7 := InsMem.io.data(30)
    ALU_Control.io.ALU_op := Control.io.ALU_op
    
    // Regsister File Input Wiring
    RegFile.io.RegWrite := Control.io.RegWrite
    RegFile.io.ReadReg1 := InsMem.io.data(19,15)
    RegFile.io.ReadReg2 := InsMem.io.data(24,20)
    RegFile.io.WriteReg := InsMem.io.data(11,7)
    RegFile.io.WriteData := Mux( Control.io.MemToReg , DataMem.io.outputData , ALU.io.out )

    // ALU Input Wiring
    ALU.io.alu_Op := ALU_Control.io.out
    ALU.io.in_A :=  MuxLookup(Control.io.operand_A_sel, 0.S, Array(
                        0.U -> RegFile.io.ReadData1,
                        1.U -> PC4.io.out.asSInt,
                        2.U -> PC.io.out.asSInt,
                        3.U -> RegFile.io.ReadData1
                    ))
    ALU.io.in_B := Mux(Control.io.operand_B_sel , ImmeGen.io.immd_se.asSInt , RegFile.io.ReadData2 )

    // Data Memory Wiring
    DataMem.io.address := (ALU.io.out(9,2)).asUInt
    DataMem.io.data := RegFile.io.ReadData2
    DataMem.io.write := Control.io.MemWrite
    DataMem.io.read := Control.io.MemRead
}
