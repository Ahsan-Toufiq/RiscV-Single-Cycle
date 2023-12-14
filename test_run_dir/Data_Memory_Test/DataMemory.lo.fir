circuit DataMemory :
  module DataMemory :
    input clock : Clock
    input reset : UInt<1>
    input io_address : UInt<32>
    input io_data : UInt<32>
    input io_write : UInt<1>
    input io_read : UInt<1>
    output io_outputData : UInt<32>

    mem memory : @[DataMemory.scala 15:27]
      data-type => UInt<32>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => io_outputData_MPORT
      writer => MPORT
      read-under-write => undefined
    node _T = bits(io_address, 9, 0)
    node _GEN_0 = validif(io_write, _T) @[DataMemory.scala 17:18]
    node _GEN_1 = validif(io_write, clock) @[DataMemory.scala 17:18]
    node _GEN_2 = mux(io_write, UInt<1>("h1"), UInt<1>("h0")) @[DataMemory.scala 17:18 DataMemory.scala 15:27]
    node _GEN_3 = validif(io_write, UInt<1>("h1")) @[DataMemory.scala 17:18]
    node _GEN_4 = validif(io_write, io_data) @[DataMemory.scala 17:18]
    node _io_outputData_T = bits(io_address, 9, 0) @[DataMemory.scala 22:33]
    node _GEN_5 = mux(io_read, UInt<1>("h1"), UInt<1>("h0")) @[DataMemory.scala 21:17 DataMemory.scala 22:33 DataMemory.scala 15:27]
    node _GEN_6 = validif(io_read, _io_outputData_T) @[DataMemory.scala 21:17 DataMemory.scala 22:33]
    node _GEN_7 = validif(io_read, clock) @[DataMemory.scala 21:17 DataMemory.scala 22:33]
    node _GEN_8 = validif(io_read, memory.io_outputData_MPORT.data) @[DataMemory.scala 21:17 DataMemory.scala 22:19]
    io_outputData <= _GEN_8
    memory.io_outputData_MPORT.addr <= _GEN_6
    memory.io_outputData_MPORT.en <= _GEN_5
    memory.io_outputData_MPORT.clk <= _GEN_7
    memory.MPORT.addr <= _GEN_0
    memory.MPORT.en <= _GEN_2
    memory.MPORT.clk <= _GEN_1
    memory.MPORT.data <= _GEN_4
    memory.MPORT.mask <= _GEN_3
