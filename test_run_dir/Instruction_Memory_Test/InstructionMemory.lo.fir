circuit InstructionMemory :
  module InstructionMemory :
    input clock : Clock
    input reset : UInt<1>
    input io_address : UInt<32>
    output io_data : UInt<32>

    mem imem : @[InstructionMemory.scala 13:16]
      data-type => UInt<32>
      depth => 1024
      read-latency => 0
      write-latency => 1
      reader => io_data_MPORT
      read-under-write => undefined
    node _io_data_T = bits(io_address, 9, 0) @[InstructionMemory.scala 16:16]
    io_data <= imem.io_data_MPORT.data @[InstructionMemory.scala 16:9]
    imem.io_data_MPORT.addr <= _io_data_T @[InstructionMemory.scala 16:16]
    imem.io_data_MPORT.en <= UInt<1>("h1") @[InstructionMemory.scala 16:16]
    imem.io_data_MPORT.clk <= clock @[InstructionMemory.scala 16:16]
