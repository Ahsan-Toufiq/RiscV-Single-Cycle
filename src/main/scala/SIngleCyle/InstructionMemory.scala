package SingleCycle

import chisel3._
import chisel3.util._
import chisel3.util.experimental.loadMemoryFromFile
import scala.io.Source

class InstructionMemory ( initFile : String ) extends Module with Config {
    val io = IO (new Bundle {
        val address = Input(UInt(32.W))    
        val data = Output(UInt(32.W))
})
val imem = Mem (1024, UInt(32.W))

loadMemoryFromFile(imem, initFile)
io.data := imem(io.address)
}