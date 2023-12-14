// package SingleCycle

// import chisel3._
// import chisel3.util._
// import org.scalatest._
// import chiseltest._


// class DataMemory_Test extends FreeSpec with ChiselScalatestTester {
//   "Data Memory Test" in {
//     test(new DataMemory()) { ob1 =>
      
//       ob1.io.address.poke(5.U)
//       ob1.io.data.poke(42.U)
//       ob1.io.write.poke(true.B)
//       ob1.io.read.poke(false.B)

//       // Write to memory
//       ob1.clock.step(1)
//       ob1.io.write.poke(false.B)

//       // Read from memory
//       ob1.io.address.poke(5.U)
//       ob1.io.read.poke(true.B)
//       ob1.clock.step(1)

//       // Check the output data
//       ob1.io.outputData.expect(42.U)

//       // Additional test cases can be added as needed
//     }
//   }
// }