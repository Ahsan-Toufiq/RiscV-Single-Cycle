;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit DataMemory : 
  module DataMemory : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip address : UInt<32>, flip data : UInt<32>, flip write : UInt<1>, flip read : UInt<1>, outputData : UInt<32>}
    
    smem memory : UInt<32>[1024], undefined @[DataMemory.scala 15:27]
    when io.write : @[DataMemory.scala 17:18]
      node _T = bits(io.address, 9, 0)
      write mport MPORT = memory[_T], clock
      MPORT <= io.data
      skip @[DataMemory.scala 17:18]
    when io.read : @[DataMemory.scala 21:17]
      node _io_outputData_T = bits(io.address, 9, 0) @[DataMemory.scala 22:33]
      read mport io_outputData_MPORT = memory[_io_outputData_T], clock @[DataMemory.scala 22:33]
      io.outputData <= io_outputData_MPORT @[DataMemory.scala 22:19]
      skip @[DataMemory.scala 21:17]
    else : @[DataMemory.scala 24:15]
      io.outputData is invalid @[DataMemory.scala 25:19]
      skip @[DataMemory.scala 24:15]
    
