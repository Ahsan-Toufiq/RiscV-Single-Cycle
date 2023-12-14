circuit ProgramCounter :
  module ProgramCounter :
    input clock : Clock
    input reset : UInt<1>
    input io_pc : UInt<32>
    output io_out : UInt<32>

    node _io_out_T = add(io_pc, UInt<32>("h4")) @[ProgramCounter.scala 11:21]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ProgramCounter.scala 11:21]
    io_out <= _io_out_T_1 @[ProgramCounter.scala 11:12]
