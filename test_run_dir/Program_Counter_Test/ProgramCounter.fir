;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit ProgramCounter : 
  module ProgramCounter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip pc : UInt<32>, out : UInt<32>}
    
    node _io_out_T = add(io.pc, UInt<32>("h04")) @[ProgramCounter.scala 11:21]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ProgramCounter.scala 11:21]
    io.out <= _io_out_T_1 @[ProgramCounter.scala 11:12]
    
