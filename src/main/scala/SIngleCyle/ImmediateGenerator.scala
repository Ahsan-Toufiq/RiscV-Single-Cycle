package SingleCycle

import chisel3._
import chisel3.util._

class LM_IO_Interface_ImmdValGen extends Bundle {
    val instr = Input(UInt(32.W))
    val PC = Input(UInt(32.W))
    val immd_se = Output(UInt(32.W))
}
class ImmdValGen extends Module {
    val io = IO (new LM_IO_Interface_ImmdValGen)

    // I-Type
    when((io.instr(6, 0)==="b0000011".U) || (io.instr(6, 0)==="b0001111".U) || (io.instr(6, 0)==="b0010011".U) || (io.instr(6, 0)==="b0011011".U) || (io.instr(6, 0)==="b1100111".U) || (io.instr(6, 0)==="b1110011".U)){
        io.immd_se := Cat(Fill(20, io.instr(31)), io.instr(31,20))
    }

    // U-Type 
    .elsewhen ((io.instr(6, 0)==="b0010111".U) || (io.instr(6, 0)==="b0110111".U) ){
        io.immd_se := Cat(io.instr(31,12), Fill(12, "b0".U))
    }
    // UJ-Type
    .elsewhen (io.instr(6, 0)==="b1101111".U){
        io.immd_se := (Cat(Fill(11, io.instr(31)), io.instr(31), io.instr(19,12), io.instr(20), io.instr(30,21), 0.U)) + io.PC
    }
    // S-Type 
    .elsewhen (io.instr(6, 0)==="b0100011".U){
        io.immd_se := Cat(Fill(20, io.instr(31)), io.instr(31,25), io.instr(11,7))

    }
    // SB-Type
    .elsewhen (io.instr(6, 0)==="b1100011".U){
        io.immd_se := (Cat(Fill(19, io.instr(31)), io.instr(31), io.instr(7), io.instr(30,25), io.instr(11,8), 0.U)) + io.PC
    }
    .otherwise {
        io.immd_se := DontCare
    }
}