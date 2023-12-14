package SingleCycle

import chisel3._
import org.scalatest.FreeSpec
import chiseltest._ 

class InstructionMemory_Test extends FreeSpec with ChiselScalatestTester{
   "Instruction Memory Test" in{
       test(new InstructionMemory ( "/home/ahsan/Desktop/UIT/MERL/RiscV_SingleCycle/InstructionMemory.txt" ) ){c =>
          c.io.address.poke(1.U)
          c.clock.step(1) 
          c.io.data.expect("h00200294".U)

       }
    }
}    