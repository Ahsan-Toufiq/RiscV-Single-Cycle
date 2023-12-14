;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit PC : 
  module PC : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<32>, out : UInt<32>}
    
    reg reg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[ProgramCounter.scala 19:22]
    io.out <= reg @[ProgramCounter.scala 20:12]
    reg <= io.in @[ProgramCounter.scala 21:9]
    
