package SingleCycle

import chisel3._
import chisel3.util._
import org.scalatest._
import chiseltest._

class Control_Test extends FreeSpec with ChiselScalatestTester {
    "Control Unit Test" in {
        test (new Control()) { ob1 =>
        
            ob1.io.opcode.poke("b0000011".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b0001111".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b0010011".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b0010111".U)
            ob1.clock.step(1)
            
            ob1.io.opcode.poke("b0011011".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b0100011".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b0110011".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b0110111".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b0111011".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b1100011".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b1100111".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b1101111".U)
            ob1.clock.step(1)
        
            ob1.io.opcode.poke("b1110011".U)
            ob1.clock.step(1)

            ob1.io.opcode.poke("b1111111".U)
            ob1.clock.step(1)
               
        }
    }
}
