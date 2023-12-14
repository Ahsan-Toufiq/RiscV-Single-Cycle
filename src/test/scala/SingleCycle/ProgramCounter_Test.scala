package SingleCycle

import chisel3._
import org.scalatest._
import chiseltest._

class PC4_Test extends FreeSpec with ChiselScalatestTester{
    "PC4 Test" in {
        test(new PC4()){ ob1 =>
        
            ob1.io.pc.poke(0.U)
            ob1.io.out.expect(4.U)
            ob1.clock.step(1)

            ob1.io.pc.poke(21.U)
            ob1.io.out.expect(25.U)
            ob1.clock.step(1)

            ob1.io.pc.poke(102.U)
            ob1.io.out.expect(106.U)
            ob1.clock.step(1)

        }
    }
}

class PC_Test extends FreeSpec with ChiselScalatestTester{
    "PC Test" in {
        test(new PC()){ ob1 =>
        
            ob1.io.in.poke(10.U)
            ob1.io.out.expect(0.U)
            ob1.clock.step(1)

            ob1.io.in.poke(29.U)
            ob1.io.out.expect(10.U)
            ob1.clock.step(1)

            ob1.io.in.poke(117.U)
            ob1.io.out.expect(29.U)
            ob1.clock.step(1)

            ob1.io.out.expect(117.U)

        }
    }
}


  