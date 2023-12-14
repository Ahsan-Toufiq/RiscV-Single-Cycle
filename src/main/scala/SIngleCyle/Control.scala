package SingleCycle

import chisel3._ 
import chisel3.util._ 

class Control extends Module {
    val io = IO (new Bundle {
        val opcode =  Input(UInt(7.W))
        val MemWrite =  Output(Bool())
        val Branch =  Output(Bool())
        val MemRead =  Output(Bool())
        val RegWrite =  Output(Bool())
        val MemToReg =  Output(Bool())
        val ALU_op =  Output(UInt(3.W))
        val operand_A_sel =  Output(UInt(2.W))
        val operand_B_sel =  Output(Bool())
        val Extend_sel =  Output(UInt(2.W))
        val Next_PC_select =  Output(UInt(2.W))
    })

    when(io.opcode === "b0000011".U){
        io.MemWrite := 0.B 
        io.Branch :=  0.B 
        io.MemRead := 1.B
        io.RegWrite := 1.B
        io.MemToReg := 1.B
        io.ALU_op :=  "b100".U
        io.operand_A_sel := "b00".U
        io.operand_B_sel := 1.B
        io.Extend_sel :=  "b00".U
        io.Next_PC_select := "b00".U
    }
    .elsewhen((io.opcode === "b0001111".U) || (io.opcode === "b0010111".U) || (io.opcode === "b0011011".U) || (io.opcode === "b0111011".U) || (io.opcode === "b1110011".U)){
        io.MemWrite := 0.B
        io.Branch :=  0.B
        io.MemRead := 0.B
        io.RegWrite := 0.B
        io.MemToReg := 0.B
        io.ALU_op :=  "b111".U
        io.operand_A_sel := "b00".U
        io.operand_B_sel := 0.B
        io.Extend_sel :=  "b00".U
        io.Next_PC_select := "b00".U

    }
    .elsewhen(io.opcode === "b0010011".U){
        io.MemWrite := 0.B
        io.Branch :=  0.B
        io.MemRead := 0.B
        io.RegWrite := 1.B
        io.MemToReg := 0.B
        io.ALU_op :=  "b001".U
        io.operand_A_sel := "b00".U
        io.operand_B_sel := 1.B
        io.Extend_sel :=  "b00".U
        io.Next_PC_select := "b00".U
    }
    .elsewhen(io.opcode === "b0100011".U){
        io.MemWrite := 1.B
        io.Branch :=  0.B
        io.MemRead := 0.B
        io.RegWrite := 0.B
        io.MemToReg := 0.B
        io.ALU_op :=  "b101".U
        io.operand_A_sel := "b00".U
        io.operand_B_sel := 1.B
        io.Extend_sel :=  "b10".U
        io.Next_PC_select := "b00".U
    }
    .elsewhen(io.opcode === "b0110011".U){
        io.MemWrite := 0.B
        io.Branch :=  0.B
        io.MemRead := 0.B
        io.RegWrite := 1.B
        io.MemToReg := 0.B
        io.ALU_op :=  "b000".U
        io.operand_A_sel := "b00".U
        io.operand_B_sel := 0.B
        io.Extend_sel :=  "b00".U
        io.Next_PC_select := "b00".U
    }
    .elsewhen(io.opcode === "b0110111".U){
        io.MemWrite := 0.B
        io.Branch :=  0.B
        
        io.MemRead := 0.B
        io.RegWrite := 1.B
        io.MemToReg := 0.B
        io.ALU_op :=  "b110".U
        io.operand_A_sel := "b11".U
        io.operand_B_sel := 1.B
        
        io.Extend_sel :=  "b01".U
        
        io.Next_PC_select := "b00".U
    }
    .elsewhen(io.opcode === "b1100011".U){
        io.MemWrite := 0.B
        io.Branch :=  1.B
        io.MemRead := 0.B
        io.RegWrite := 0.B
        io.MemToReg := 0.B
        io.ALU_op :=  "b010".U
        io.operand_A_sel := "b00".U
        io.operand_B_sel := 0.B
        io.Extend_sel :=  "b00".U
        io.Next_PC_select := "b01".U
    }
    .elsewhen(io.opcode === "b1100111".U){
        io.MemWrite := 0.B
        io.Branch :=  0.B
        io.MemRead := 0.B
        io.RegWrite := 1.B
        io.MemToReg := 0.B
        io.ALU_op :=  "b011".U
        io.operand_A_sel := "b10".U
        io.operand_B_sel := 0.B
        io.Extend_sel :=  "b00".U
        io.Next_PC_select := "b11".U
    }
    .elsewhen(io.opcode === "b1101111".U){
        io.MemWrite := 0.B
        io.Branch :=  0.B
        io.MemRead := 0.B
        io.RegWrite := 1.B
        io.MemToReg := 0.B
        io.ALU_op :=  "b011".U
        io.operand_A_sel := "b10".U
        io.operand_B_sel := 0.B
        io.Extend_sel :=  "b00".U
        io.Next_PC_select := "b10".U
    }
    .otherwise{
        io.MemWrite := DontCare
        io.Branch :=  DontCare
        io.MemRead := DontCare
        io.RegWrite := DontCare
        io.MemToReg := DontCare
        io.ALU_op :=  DontCare
        io.operand_A_sel := DontCare
        io.operand_B_sel := DontCare
        io.Extend_sel :=  DontCare
        io.Next_PC_select := DontCare
    }
}