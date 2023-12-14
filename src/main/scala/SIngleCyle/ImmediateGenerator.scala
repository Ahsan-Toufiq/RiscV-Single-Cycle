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
        io.immd_se := 0.U | io.instr(31,20)
    }

    // U-Type 
    .elsewhen ((io.instr(6, 0)==="b0010111".U) || (io.instr(6, 0)==="b0110111".U) ){
        io.immd_se := 0.U | io.instr(31,12)
    }
    // UJ-Type
    .elsewhen (io.instr(6, 0)==="b1101111".U){
        io.immd_se := io.PC + (0.U | io.instr(31,12))
    }
    // S-Type and SB-Ty pe
    .elsewhen (io.instr(6, 0)==="b0100011".U){
        io.immd_se := 0.U | io.instr(31,25)
    }
    // SB-Ty pe
    .elsewhen (io.instr(6, 0)==="b1100011".U){
        io.immd_se := io.PC + (0.U | io.instr(31,25))
    }
    .otherwise {
        io.immd_se := DontCare
    }
}