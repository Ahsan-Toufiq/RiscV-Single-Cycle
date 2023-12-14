;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit InstructionMemory : 
  module InstructionMemory : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip address : UInt<32>, data : UInt<32>}
    
    cmem imem : UInt<32>[1024] @[InstructionMemory.scala 13:16]
    node _io_data_T = bits(io.address, 9, 0) @[InstructionMemory.scala 16:16]
    infer mport io_data_MPORT = imem[_io_data_T], clock @[InstructionMemory.scala 16:16]
    io.data <= io_data_MPORT @[InstructionMemory.scala 16:9]
    
