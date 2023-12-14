circuit PC :
  module PC :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<32>
    output io_out : UInt<32>

    reg reg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg) @[ProgramCounter.scala 19:22]
    io_out <= reg @[ProgramCounter.scala 20:12]
    reg <= mux(reset, UInt<32>("h0"), io_in) @[ProgramCounter.scala 19:22 ProgramCounter.scala 19:22 ProgramCounter.scala 21:9]
