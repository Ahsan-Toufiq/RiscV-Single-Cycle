package SingleCycle

import chisel3._
import chisel3.util._

class ALU_Control extends Module{
    val io = IO(new Bundle{
        val ALU_op = Input(UInt(3.W))
        val func3 = Input(UInt(3.W))
        val func7 = Input(UInt(7.W))
        val out = Output(UInt(11.W))
    })
    io.out := "b000".U
    when(io.ALU_op === "b000".U){//R-Type
        io.out := Cat("b0".U, io.func7, io.func3)
    }.elsewhen(io.ALU_op === "b001".U){//I-Type
        io.out := Cat("b0".U, "b0000000".U, io.func3)
    }.elsewhen(io.ALU_op === "b101".U){//S-Type
        io.out := "b00000000000".U
    }.elsewhen(io.ALU_op === "b010".U){//SB-Type
        io.out := Cat("b10000000".U, io.func3)
    }.elsewhen(io.ALU_op === "b110".U){//LUI-Type
        io.out := "b00000000000".U
    }.elsewhen(io.ALU_op === "b011".U){//UJ-Type
        io.out := "b11111111111".U
    }.elsewhen(io.ALU_op === "b100".U){//Load
        io.out := "b00000000000".U
    }.elsewhen(io.ALU_op === "b111".U){//AUIPC
        io.out := "b00000000000".U
    }.otherwise{
        io.out := DontCare
    }
}