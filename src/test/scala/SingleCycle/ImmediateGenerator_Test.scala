package SingleCycle

import chisel3._
import org.scalatest._
import chiseltest._

class ImmediateGenerator_Test extends FreeSpec with ChiselScalatestTester{
    "Immediate Generator Test" in {
        test(new ImmdValGen){ ob1 =>
        
        // I-Type
        ob1.io.instr.poke("b00101001001010010000000100010011".U)
        ob1.clock.step(1)
        
        ob1.io.instr.poke("b01110000001101100010000100010011".U)
        ob1.clock.step(1)

        ob1.io.instr.poke("b00000000110101010011011001110011".U)
        ob1.clock.step(1)

        ob1.io.instr.poke("b00000001001000110100111000010011".U)
        ob1.clock.step(1)

        ob1.io.instr.poke("b00110011001100110111010011110011".U)
        ob1.clock.step(1)
        
        ob1.io.instr.poke("b00000011000010101011110111110011".U)
        ob1.clock.step(1)

        // U-Type
        ob1.io.instr.poke("b00101001011010010000001010010111".U)
        ob1.clock.step(1)
        
        ob1.io.instr.poke("b00000011000010101011110110110111".U)
        ob1.clock.step(1)

        // UJ-Type
        ob1.io.instr.poke("b11001001101100000010010101101111".U)
        ob1.clock.step(1)

        // S-Type
        ob1.io.instr.poke("b10010001001010010110011000100011".U)
        ob1.clock.step(1)

        // SB-Type
        ob1.io.instr.poke("b11011001011101110011011001100011".U)
        ob1.clock.step(1)    
        }
    }
}