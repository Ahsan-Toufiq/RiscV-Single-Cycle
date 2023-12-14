package SingleCycle

import chisel3._
import chisel3.util._

class RegisterFile extends Module{
    val io = IO(new Bundle{
        val ReadReg1 = Input(UInt(5.W))
        val ReadReg2 = Input(UInt(5.W))
        val RegWrite = Input(Bool()) // Write Enable
        val WriteReg = Input(UInt(5.W))
        val WriteData = Input(UInt(32.W))
        val ReadData1 =Output(UInt(32.W))
        val ReadData2 =Output(UInt(32.W))
    })

    val File = RegInit(VecInit(Seq.fill(32)(0.U(32.W))))


    io.ReadData1 := File(io.ReadReg1)
    io.ReadData2 := File(io.ReadReg2)
    
    when(io.RegWrite){
        File(io.WriteReg) := io.WriteData    
    }
    File(0) := 0.U 
}