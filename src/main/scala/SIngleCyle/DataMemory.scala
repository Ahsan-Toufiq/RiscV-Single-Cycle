package SingleCycle

import chisel3._ 
import chisel3.util._ 

class DataMemory extends Module {
  val io = IO(new Bundle {
    val address = Input(UInt(32.W))
    val data = Input(SInt(32.W))
    val write = Input(Bool())
    val read = Input(Bool())
    val outputData = Output(SInt(32.W))
  })

  val memory = Mem(1024, SInt(32.W))

  when(io.write) {
    memory.write(io.address, io.data)
  }

  when(io.read) {
    io.outputData := memory.read(io.address)
  
  }.otherwise {
    io.outputData := DontCare
  }
}