package SingleCycle

import chisel3._
import chisel3.util._
import org.scalatest._
import chiseltest._

class Top_Test extends FreeSpec with ChiselScalatestTester {
    "Top Test" in {
        test (new Top()) { ob1 =>
        ob1.clock.step(1)
        }
    }
}