package SingleCycle

import chisel3._
import chisel3.util._
import org.scalatest._
import chiseltest._

class RegisterFile_Test extends FreeSpec with ChiselScalatestTester {
    "Register File Test" in {
        test (new RegisterFile()) { ob1 =>
            
            ob1.io.ReadReg1.poke(31.U)
            ob1.io.ReadReg2.poke(0.U)
            ob1.io.RegWrite.poke(1.B)
            ob1.io.WriteReg.poke(1.U)
            ob1.io.WriteData.poke(5050.U)
            ob1.clock.step(1)

            ob1.io.WriteReg.poke(0.U)
            ob1.io.WriteData.poke(2020.U)
            ob1.io.ReadReg1.poke(1.U)
            ob1.io.ReadReg2.poke(1.U)
            ob1.clock.step(1)

            ob1.io.WriteReg.poke(1.U)
            ob1.io.WriteData.poke(2021.U)
            ob1.io.ReadReg2.poke(1.U)
        }
    }
}