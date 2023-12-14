package SingleCycle

import chisel3._
import chisel3.util._

class PC4 extends Module {
    val io = IO (new Bundle {
        val pc = Input ( UInt (32.W ) )
        val out = Output ( UInt ( 32.W ) )
    })
    io.out := io.pc + 4.U(32.W)
}

class PC extends Module {
    val io = IO (new Bundle {
        val in = Input ( UInt (32.W ) )
        val out = Output ( UInt ( 32.W ) )
    })
    val reg = RegInit(0.U(32.W))
    io.out := reg
    reg := io.in
}