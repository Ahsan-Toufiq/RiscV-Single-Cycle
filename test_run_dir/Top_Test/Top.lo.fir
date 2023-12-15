circuit Top :
  module PC :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<32>
    output io_out : UInt<32>

    reg reg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), reg) @[ProgramCounter.scala 19:22]
    io_out <= reg @[ProgramCounter.scala 20:12]
    reg <= mux(reset, UInt<32>("h0"), io_in) @[ProgramCounter.scala 19:22 ProgramCounter.scala 19:22 ProgramCounter.scala 21:9]

  module PC4 :
    input clock : Clock
    input reset : UInt<1>
    input io_pc : UInt<32>
    output io_out : UInt<32>

    node _io_out_T = add(io_pc, UInt<32>("h4")) @[ProgramCounter.scala 11:21]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ProgramCounter.scala 11:21]
    io_out <= _io_out_T_1 @[ProgramCounter.scala 11:12]

  module RegisterFile :
    input clock : Clock
    input reset : UInt<1>
    input io_ReadReg1 : UInt<5>
    input io_ReadReg2 : UInt<5>
    input io_RegWrite : UInt<1>
    input io_WriteReg : UInt<5>
    input io_WriteData : SInt<32>
    output io_ReadData1 : SInt<32>
    output io_ReadData2 : SInt<32>

    reg File_0 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_0) @[RegisterFile.scala 17:23]
    reg File_1 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_1) @[RegisterFile.scala 17:23]
    reg File_2 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_2) @[RegisterFile.scala 17:23]
    reg File_3 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_3) @[RegisterFile.scala 17:23]
    reg File_4 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_4) @[RegisterFile.scala 17:23]
    reg File_5 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_5) @[RegisterFile.scala 17:23]
    reg File_6 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_6) @[RegisterFile.scala 17:23]
    reg File_7 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_7) @[RegisterFile.scala 17:23]
    reg File_8 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_8) @[RegisterFile.scala 17:23]
    reg File_9 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_9) @[RegisterFile.scala 17:23]
    reg File_10 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_10) @[RegisterFile.scala 17:23]
    reg File_11 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_11) @[RegisterFile.scala 17:23]
    reg File_12 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_12) @[RegisterFile.scala 17:23]
    reg File_13 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_13) @[RegisterFile.scala 17:23]
    reg File_14 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_14) @[RegisterFile.scala 17:23]
    reg File_15 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_15) @[RegisterFile.scala 17:23]
    reg File_16 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_16) @[RegisterFile.scala 17:23]
    reg File_17 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_17) @[RegisterFile.scala 17:23]
    reg File_18 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_18) @[RegisterFile.scala 17:23]
    reg File_19 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_19) @[RegisterFile.scala 17:23]
    reg File_20 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_20) @[RegisterFile.scala 17:23]
    reg File_21 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_21) @[RegisterFile.scala 17:23]
    reg File_22 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_22) @[RegisterFile.scala 17:23]
    reg File_23 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_23) @[RegisterFile.scala 17:23]
    reg File_24 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_24) @[RegisterFile.scala 17:23]
    reg File_25 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_25) @[RegisterFile.scala 17:23]
    reg File_26 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_26) @[RegisterFile.scala 17:23]
    reg File_27 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_27) @[RegisterFile.scala 17:23]
    reg File_28 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_28) @[RegisterFile.scala 17:23]
    reg File_29 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_29) @[RegisterFile.scala 17:23]
    reg File_30 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_30) @[RegisterFile.scala 17:23]
    reg File_31 : SInt<32>, clock with :
      reset => (UInt<1>("h0"), File_31) @[RegisterFile.scala 17:23]
    node _GEN_0 = validif(eq(UInt<1>("h0"), io_ReadReg1), File_0) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_ReadReg1), File_1, _GEN_0) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_ReadReg1), File_2, _GEN_1) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_ReadReg1), File_3, _GEN_2) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_ReadReg1), File_4, _GEN_3) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_5 = mux(eq(UInt<3>("h5"), io_ReadReg1), File_5, _GEN_4) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_6 = mux(eq(UInt<3>("h6"), io_ReadReg1), File_6, _GEN_5) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_7 = mux(eq(UInt<3>("h7"), io_ReadReg1), File_7, _GEN_6) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_8 = mux(eq(UInt<4>("h8"), io_ReadReg1), File_8, _GEN_7) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_9 = mux(eq(UInt<4>("h9"), io_ReadReg1), File_9, _GEN_8) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_10 = mux(eq(UInt<4>("ha"), io_ReadReg1), File_10, _GEN_9) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_11 = mux(eq(UInt<4>("hb"), io_ReadReg1), File_11, _GEN_10) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_12 = mux(eq(UInt<4>("hc"), io_ReadReg1), File_12, _GEN_11) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_13 = mux(eq(UInt<4>("hd"), io_ReadReg1), File_13, _GEN_12) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_14 = mux(eq(UInt<4>("he"), io_ReadReg1), File_14, _GEN_13) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_15 = mux(eq(UInt<4>("hf"), io_ReadReg1), File_15, _GEN_14) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_16 = mux(eq(UInt<5>("h10"), io_ReadReg1), File_16, _GEN_15) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_17 = mux(eq(UInt<5>("h11"), io_ReadReg1), File_17, _GEN_16) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_18 = mux(eq(UInt<5>("h12"), io_ReadReg1), File_18, _GEN_17) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_19 = mux(eq(UInt<5>("h13"), io_ReadReg1), File_19, _GEN_18) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_20 = mux(eq(UInt<5>("h14"), io_ReadReg1), File_20, _GEN_19) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_21 = mux(eq(UInt<5>("h15"), io_ReadReg1), File_21, _GEN_20) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_22 = mux(eq(UInt<5>("h16"), io_ReadReg1), File_22, _GEN_21) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_23 = mux(eq(UInt<5>("h17"), io_ReadReg1), File_23, _GEN_22) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_24 = mux(eq(UInt<5>("h18"), io_ReadReg1), File_24, _GEN_23) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_25 = mux(eq(UInt<5>("h19"), io_ReadReg1), File_25, _GEN_24) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_26 = mux(eq(UInt<5>("h1a"), io_ReadReg1), File_26, _GEN_25) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_27 = mux(eq(UInt<5>("h1b"), io_ReadReg1), File_27, _GEN_26) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_28 = mux(eq(UInt<5>("h1c"), io_ReadReg1), File_28, _GEN_27) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_29 = mux(eq(UInt<5>("h1d"), io_ReadReg1), File_29, _GEN_28) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_30 = mux(eq(UInt<5>("h1e"), io_ReadReg1), File_30, _GEN_29) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_31 = mux(eq(UInt<5>("h1f"), io_ReadReg1), File_31, _GEN_30) @[RegisterFile.scala 20:18 RegisterFile.scala 20:18]
    node _GEN_32 = validif(eq(UInt<1>("h0"), io_ReadReg2), File_0) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_33 = mux(eq(UInt<1>("h1"), io_ReadReg2), File_1, _GEN_32) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_34 = mux(eq(UInt<2>("h2"), io_ReadReg2), File_2, _GEN_33) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_35 = mux(eq(UInt<2>("h3"), io_ReadReg2), File_3, _GEN_34) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_36 = mux(eq(UInt<3>("h4"), io_ReadReg2), File_4, _GEN_35) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_37 = mux(eq(UInt<3>("h5"), io_ReadReg2), File_5, _GEN_36) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_38 = mux(eq(UInt<3>("h6"), io_ReadReg2), File_6, _GEN_37) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_39 = mux(eq(UInt<3>("h7"), io_ReadReg2), File_7, _GEN_38) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_40 = mux(eq(UInt<4>("h8"), io_ReadReg2), File_8, _GEN_39) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_41 = mux(eq(UInt<4>("h9"), io_ReadReg2), File_9, _GEN_40) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_42 = mux(eq(UInt<4>("ha"), io_ReadReg2), File_10, _GEN_41) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_43 = mux(eq(UInt<4>("hb"), io_ReadReg2), File_11, _GEN_42) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_44 = mux(eq(UInt<4>("hc"), io_ReadReg2), File_12, _GEN_43) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_45 = mux(eq(UInt<4>("hd"), io_ReadReg2), File_13, _GEN_44) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_46 = mux(eq(UInt<4>("he"), io_ReadReg2), File_14, _GEN_45) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_47 = mux(eq(UInt<4>("hf"), io_ReadReg2), File_15, _GEN_46) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_48 = mux(eq(UInt<5>("h10"), io_ReadReg2), File_16, _GEN_47) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_49 = mux(eq(UInt<5>("h11"), io_ReadReg2), File_17, _GEN_48) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_50 = mux(eq(UInt<5>("h12"), io_ReadReg2), File_18, _GEN_49) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_51 = mux(eq(UInt<5>("h13"), io_ReadReg2), File_19, _GEN_50) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_52 = mux(eq(UInt<5>("h14"), io_ReadReg2), File_20, _GEN_51) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_53 = mux(eq(UInt<5>("h15"), io_ReadReg2), File_21, _GEN_52) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_54 = mux(eq(UInt<5>("h16"), io_ReadReg2), File_22, _GEN_53) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_55 = mux(eq(UInt<5>("h17"), io_ReadReg2), File_23, _GEN_54) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_56 = mux(eq(UInt<5>("h18"), io_ReadReg2), File_24, _GEN_55) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_57 = mux(eq(UInt<5>("h19"), io_ReadReg2), File_25, _GEN_56) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_58 = mux(eq(UInt<5>("h1a"), io_ReadReg2), File_26, _GEN_57) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_59 = mux(eq(UInt<5>("h1b"), io_ReadReg2), File_27, _GEN_58) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_60 = mux(eq(UInt<5>("h1c"), io_ReadReg2), File_28, _GEN_59) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_61 = mux(eq(UInt<5>("h1d"), io_ReadReg2), File_29, _GEN_60) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_62 = mux(eq(UInt<5>("h1e"), io_ReadReg2), File_30, _GEN_61) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _GEN_63 = mux(eq(UInt<5>("h1f"), io_ReadReg2), File_31, _GEN_62) @[RegisterFile.scala 21:18 RegisterFile.scala 21:18]
    node _File_io_WriteReg = io_WriteData @[RegisterFile.scala 24:27 RegisterFile.scala 24:27]
    node _GEN_64 = mux(eq(UInt<1>("h0"), io_WriteReg), _File_io_WriteReg, File_0) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_65 = mux(eq(UInt<1>("h1"), io_WriteReg), _File_io_WriteReg, File_1) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_66 = mux(eq(UInt<2>("h2"), io_WriteReg), _File_io_WriteReg, File_2) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_67 = mux(eq(UInt<2>("h3"), io_WriteReg), _File_io_WriteReg, File_3) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_68 = mux(eq(UInt<3>("h4"), io_WriteReg), _File_io_WriteReg, File_4) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_69 = mux(eq(UInt<3>("h5"), io_WriteReg), _File_io_WriteReg, File_5) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_70 = mux(eq(UInt<3>("h6"), io_WriteReg), _File_io_WriteReg, File_6) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_71 = mux(eq(UInt<3>("h7"), io_WriteReg), _File_io_WriteReg, File_7) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_72 = mux(eq(UInt<4>("h8"), io_WriteReg), _File_io_WriteReg, File_8) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_73 = mux(eq(UInt<4>("h9"), io_WriteReg), _File_io_WriteReg, File_9) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_74 = mux(eq(UInt<4>("ha"), io_WriteReg), _File_io_WriteReg, File_10) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_75 = mux(eq(UInt<4>("hb"), io_WriteReg), _File_io_WriteReg, File_11) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_76 = mux(eq(UInt<4>("hc"), io_WriteReg), _File_io_WriteReg, File_12) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_77 = mux(eq(UInt<4>("hd"), io_WriteReg), _File_io_WriteReg, File_13) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_78 = mux(eq(UInt<4>("he"), io_WriteReg), _File_io_WriteReg, File_14) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_79 = mux(eq(UInt<4>("hf"), io_WriteReg), _File_io_WriteReg, File_15) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_80 = mux(eq(UInt<5>("h10"), io_WriteReg), _File_io_WriteReg, File_16) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_81 = mux(eq(UInt<5>("h11"), io_WriteReg), _File_io_WriteReg, File_17) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_82 = mux(eq(UInt<5>("h12"), io_WriteReg), _File_io_WriteReg, File_18) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_83 = mux(eq(UInt<5>("h13"), io_WriteReg), _File_io_WriteReg, File_19) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_84 = mux(eq(UInt<5>("h14"), io_WriteReg), _File_io_WriteReg, File_20) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_85 = mux(eq(UInt<5>("h15"), io_WriteReg), _File_io_WriteReg, File_21) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_86 = mux(eq(UInt<5>("h16"), io_WriteReg), _File_io_WriteReg, File_22) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_87 = mux(eq(UInt<5>("h17"), io_WriteReg), _File_io_WriteReg, File_23) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_88 = mux(eq(UInt<5>("h18"), io_WriteReg), _File_io_WriteReg, File_24) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_89 = mux(eq(UInt<5>("h19"), io_WriteReg), _File_io_WriteReg, File_25) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_90 = mux(eq(UInt<5>("h1a"), io_WriteReg), _File_io_WriteReg, File_26) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_91 = mux(eq(UInt<5>("h1b"), io_WriteReg), _File_io_WriteReg, File_27) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_92 = mux(eq(UInt<5>("h1c"), io_WriteReg), _File_io_WriteReg, File_28) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_93 = mux(eq(UInt<5>("h1d"), io_WriteReg), _File_io_WriteReg, File_29) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_94 = mux(eq(UInt<5>("h1e"), io_WriteReg), _File_io_WriteReg, File_30) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_95 = mux(eq(UInt<5>("h1f"), io_WriteReg), _File_io_WriteReg, File_31) @[RegisterFile.scala 24:27 RegisterFile.scala 24:27 RegisterFile.scala 17:23]
    node _GEN_96 = mux(io_RegWrite, _GEN_64, File_0) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_97 = mux(io_RegWrite, _GEN_65, File_1) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_98 = mux(io_RegWrite, _GEN_66, File_2) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_99 = mux(io_RegWrite, _GEN_67, File_3) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_100 = mux(io_RegWrite, _GEN_68, File_4) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_101 = mux(io_RegWrite, _GEN_69, File_5) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_102 = mux(io_RegWrite, _GEN_70, File_6) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_103 = mux(io_RegWrite, _GEN_71, File_7) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_104 = mux(io_RegWrite, _GEN_72, File_8) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_105 = mux(io_RegWrite, _GEN_73, File_9) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_106 = mux(io_RegWrite, _GEN_74, File_10) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_107 = mux(io_RegWrite, _GEN_75, File_11) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_108 = mux(io_RegWrite, _GEN_76, File_12) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_109 = mux(io_RegWrite, _GEN_77, File_13) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_110 = mux(io_RegWrite, _GEN_78, File_14) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_111 = mux(io_RegWrite, _GEN_79, File_15) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_112 = mux(io_RegWrite, _GEN_80, File_16) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_113 = mux(io_RegWrite, _GEN_81, File_17) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_114 = mux(io_RegWrite, _GEN_82, File_18) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_115 = mux(io_RegWrite, _GEN_83, File_19) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_116 = mux(io_RegWrite, _GEN_84, File_20) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_117 = mux(io_RegWrite, _GEN_85, File_21) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_118 = mux(io_RegWrite, _GEN_86, File_22) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_119 = mux(io_RegWrite, _GEN_87, File_23) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_120 = mux(io_RegWrite, _GEN_88, File_24) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_121 = mux(io_RegWrite, _GEN_89, File_25) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_122 = mux(io_RegWrite, _GEN_90, File_26) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_123 = mux(io_RegWrite, _GEN_91, File_27) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_124 = mux(io_RegWrite, _GEN_92, File_28) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_125 = mux(io_RegWrite, _GEN_93, File_29) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_126 = mux(io_RegWrite, _GEN_94, File_30) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _GEN_127 = mux(io_RegWrite, _GEN_95, File_31) @[RegisterFile.scala 23:22 RegisterFile.scala 17:23]
    node _File_WIRE_0 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_1 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_2 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_3 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_4 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_5 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_6 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_7 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_8 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_9 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_10 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_11 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_12 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_13 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_14 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_15 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_16 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_17 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_18 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_19 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_20 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_21 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_22 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_23 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_24 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_25 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_26 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_27 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_28 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_29 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_30 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_WIRE_31 = asSInt(UInt<32>("h0")) @[RegisterFile.scala 17:31 RegisterFile.scala 17:31]
    node _File_io_ReadReg1 = _GEN_31 @[RegisterFile.scala 20:18]
    node _File_io_ReadReg2 = _GEN_63 @[RegisterFile.scala 21:18]
    io_ReadData1 <= _File_io_ReadReg1 @[RegisterFile.scala 20:18]
    io_ReadData2 <= _File_io_ReadReg2 @[RegisterFile.scala 21:18]
    File_0 <= mux(reset, _File_WIRE_0, asSInt(UInt<1>("h0"))) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23 RegisterFile.scala 26:13]
    File_1 <= mux(reset, _File_WIRE_1, _GEN_97) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_2 <= mux(reset, _File_WIRE_2, _GEN_98) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_3 <= mux(reset, _File_WIRE_3, _GEN_99) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_4 <= mux(reset, _File_WIRE_4, _GEN_100) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_5 <= mux(reset, _File_WIRE_5, _GEN_101) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_6 <= mux(reset, _File_WIRE_6, _GEN_102) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_7 <= mux(reset, _File_WIRE_7, _GEN_103) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_8 <= mux(reset, _File_WIRE_8, _GEN_104) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_9 <= mux(reset, _File_WIRE_9, _GEN_105) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_10 <= mux(reset, _File_WIRE_10, _GEN_106) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_11 <= mux(reset, _File_WIRE_11, _GEN_107) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_12 <= mux(reset, _File_WIRE_12, _GEN_108) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_13 <= mux(reset, _File_WIRE_13, _GEN_109) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_14 <= mux(reset, _File_WIRE_14, _GEN_110) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_15 <= mux(reset, _File_WIRE_15, _GEN_111) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_16 <= mux(reset, _File_WIRE_16, _GEN_112) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_17 <= mux(reset, _File_WIRE_17, _GEN_113) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_18 <= mux(reset, _File_WIRE_18, _GEN_114) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_19 <= mux(reset, _File_WIRE_19, _GEN_115) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_20 <= mux(reset, _File_WIRE_20, _GEN_116) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_21 <= mux(reset, _File_WIRE_21, _GEN_117) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_22 <= mux(reset, _File_WIRE_22, _GEN_118) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_23 <= mux(reset, _File_WIRE_23, _GEN_119) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_24 <= mux(reset, _File_WIRE_24, _GEN_120) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_25 <= mux(reset, _File_WIRE_25, _GEN_121) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_26 <= mux(reset, _File_WIRE_26, _GEN_122) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_27 <= mux(reset, _File_WIRE_27, _GEN_123) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_28 <= mux(reset, _File_WIRE_28, _GEN_124) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_29 <= mux(reset, _File_WIRE_29, _GEN_125) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_30 <= mux(reset, _File_WIRE_30, _GEN_126) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]
    File_31 <= mux(reset, _File_WIRE_31, _GEN_127) @[RegisterFile.scala 17:23 RegisterFile.scala 17:23]

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

  module ImmdValGen :
    input clock : Clock
    input reset : UInt<1>
    input io_instr : UInt<32>
    input io_PC : UInt<32>
    output io_immd_se : UInt<32>

    node _T = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 15:19]
    node _T_1 = eq(_T, UInt<2>("h3")) @[ImmediateGenerator.scala 15:25]
    node _T_2 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 15:54]
    node _T_3 = eq(_T_2, UInt<4>("hf")) @[ImmediateGenerator.scala 15:60]
    node _T_4 = or(_T_1, _T_3) @[ImmediateGenerator.scala 15:42]
    node _T_5 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 15:89]
    node _T_6 = eq(_T_5, UInt<5>("h13")) @[ImmediateGenerator.scala 15:95]
    node _T_7 = or(_T_4, _T_6) @[ImmediateGenerator.scala 15:77]
    node _T_8 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 15:124]
    node _T_9 = eq(_T_8, UInt<5>("h1b")) @[ImmediateGenerator.scala 15:130]
    node _T_10 = or(_T_7, _T_9) @[ImmediateGenerator.scala 15:112]
    node _T_11 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 15:159]
    node _T_12 = eq(_T_11, UInt<7>("h67")) @[ImmediateGenerator.scala 15:165]
    node _T_13 = or(_T_10, _T_12) @[ImmediateGenerator.scala 15:147]
    node _T_14 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 15:194]
    node _T_15 = eq(_T_14, UInt<7>("h73")) @[ImmediateGenerator.scala 15:200]
    node _T_16 = or(_T_13, _T_15) @[ImmediateGenerator.scala 15:182]
    node _io_immd_se_T = bits(io_instr, 31, 31) @[ImmediateGenerator.scala 16:44]
    node _io_immd_se_T_1 = bits(_io_immd_se_T, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_hi = mux(_io_immd_se_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_lo = bits(io_instr, 31, 20) @[ImmediateGenerator.scala 16:59]
    node _io_immd_se_T_2 = cat(io_immd_se_hi, io_immd_se_lo) @[Cat.scala 30:58]
    node _T_17 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 20:25]
    node _T_18 = eq(_T_17, UInt<5>("h17")) @[ImmediateGenerator.scala 20:31]
    node _T_19 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 20:60]
    node _T_20 = eq(_T_19, UInt<6>("h37")) @[ImmediateGenerator.scala 20:66]
    node _T_21 = or(_T_18, _T_20) @[ImmediateGenerator.scala 20:48]
    node io_immd_se_hi_1 = bits(io_instr, 31, 12) @[ImmediateGenerator.scala 21:35]
    node io_immd_se_lo_1 = mux(UInt<1>("h0"), UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 72:12]
    node _io_immd_se_T_3 = cat(io_immd_se_hi_1, io_immd_se_lo_1) @[Cat.scala 30:58]
    node _T_22 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 24:24]
    node _T_23 = eq(_T_22, UInt<7>("h6f")) @[ImmediateGenerator.scala 24:30]
    node _io_immd_se_T_4 = bits(io_instr, 31, 31) @[ImmediateGenerator.scala 25:45]
    node _io_immd_se_T_5 = bits(_io_immd_se_T_4, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_hi_hi_hi = mux(_io_immd_se_T_5, UInt<11>("h7ff"), UInt<11>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_hi_hi_lo = bits(io_instr, 31, 31) @[ImmediateGenerator.scala 25:60]
    node io_immd_se_hi_lo = bits(io_instr, 19, 12) @[ImmediateGenerator.scala 25:74]
    node io_immd_se_lo_hi_hi = bits(io_instr, 20, 20) @[ImmediateGenerator.scala 25:91]
    node io_immd_se_lo_hi_lo = bits(io_instr, 30, 21) @[ImmediateGenerator.scala 25:105]
    node io_immd_se_lo_hi = cat(io_immd_se_lo_hi_hi, io_immd_se_lo_hi_lo) @[Cat.scala 30:58]
    node io_immd_se_lo_2 = cat(io_immd_se_lo_hi, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_immd_se_hi_hi = cat(io_immd_se_hi_hi_hi, io_immd_se_hi_hi_lo) @[Cat.scala 30:58]
    node io_immd_se_hi_2 = cat(io_immd_se_hi_hi, io_immd_se_hi_lo) @[Cat.scala 30:58]
    node _io_immd_se_T_6 = cat(io_immd_se_hi_2, io_immd_se_lo_2) @[Cat.scala 30:58]
    node _io_immd_se_T_7 = add(_io_immd_se_T_6, io_PC) @[ImmediateGenerator.scala 25:120]
    node _io_immd_se_T_8 = tail(_io_immd_se_T_7, 1) @[ImmediateGenerator.scala 25:120]
    node _T_24 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 28:24]
    node _T_25 = eq(_T_24, UInt<6>("h23")) @[ImmediateGenerator.scala 28:30]
    node _io_immd_se_T_9 = bits(io_instr, 31, 31) @[ImmediateGenerator.scala 29:44]
    node _io_immd_se_T_10 = bits(_io_immd_se_T_9, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_hi_hi_1 = mux(_io_immd_se_T_10, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_hi_lo_1 = bits(io_instr, 31, 25) @[ImmediateGenerator.scala 29:59]
    node io_immd_se_lo_3 = bits(io_instr, 11, 7) @[ImmediateGenerator.scala 29:76]
    node io_immd_se_hi_3 = cat(io_immd_se_hi_hi_1, io_immd_se_hi_lo_1) @[Cat.scala 30:58]
    node _io_immd_se_T_11 = cat(io_immd_se_hi_3, io_immd_se_lo_3) @[Cat.scala 30:58]
    node _T_26 = bits(io_instr, 6, 0) @[ImmediateGenerator.scala 33:24]
    node _T_27 = eq(_T_26, UInt<7>("h63")) @[ImmediateGenerator.scala 33:30]
    node _io_immd_se_T_12 = bits(io_instr, 31, 31) @[ImmediateGenerator.scala 34:45]
    node _io_immd_se_T_13 = bits(_io_immd_se_T_12, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_hi_hi_hi_1 = mux(_io_immd_se_T_13, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_hi_hi_lo_1 = bits(io_instr, 31, 31) @[ImmediateGenerator.scala 34:60]
    node io_immd_se_hi_lo_2 = bits(io_instr, 7, 7) @[ImmediateGenerator.scala 34:74]
    node io_immd_se_lo_hi_hi_1 = bits(io_instr, 30, 25) @[ImmediateGenerator.scala 34:87]
    node io_immd_se_lo_hi_lo_1 = bits(io_instr, 11, 8) @[ImmediateGenerator.scala 34:104]
    node io_immd_se_lo_hi_1 = cat(io_immd_se_lo_hi_hi_1, io_immd_se_lo_hi_lo_1) @[Cat.scala 30:58]
    node io_immd_se_lo_4 = cat(io_immd_se_lo_hi_1, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_immd_se_hi_hi_2 = cat(io_immd_se_hi_hi_hi_1, io_immd_se_hi_hi_lo_1) @[Cat.scala 30:58]
    node io_immd_se_hi_4 = cat(io_immd_se_hi_hi_2, io_immd_se_hi_lo_2) @[Cat.scala 30:58]
    node _io_immd_se_T_14 = cat(io_immd_se_hi_4, io_immd_se_lo_4) @[Cat.scala 30:58]
    node _io_immd_se_T_15 = add(_io_immd_se_T_14, io_PC) @[ImmediateGenerator.scala 34:118]
    node _io_immd_se_T_16 = tail(_io_immd_se_T_15, 1) @[ImmediateGenerator.scala 34:118]
    node _GEN_0 = validif(_T_27, _io_immd_se_T_16) @[ImmediateGenerator.scala 33:46 ImmediateGenerator.scala 34:20]
    node _GEN_1 = mux(_T_25, _io_immd_se_T_11, _GEN_0) @[ImmediateGenerator.scala 28:46 ImmediateGenerator.scala 29:20]
    node _GEN_2 = mux(_T_23, _io_immd_se_T_8, _GEN_1) @[ImmediateGenerator.scala 24:46 ImmediateGenerator.scala 25:20]
    node _GEN_3 = mux(_T_21, _io_immd_se_T_3, _GEN_2) @[ImmediateGenerator.scala 20:84 ImmediateGenerator.scala 21:20]
    node _GEN_4 = mux(_T_16, _io_immd_se_T_2, _GEN_3) @[ImmediateGenerator.scala 15:217 ImmediateGenerator.scala 16:20]
    io_immd_se <= _GEN_4

  module DataMemory :
    input clock : Clock
    input reset : UInt<1>
    input io_address : UInt<32>
    input io_data : SInt<32>
    input io_write : UInt<1>
    input io_read : UInt<1>
    output io_outputData : SInt<32>

    mem memory : @[DataMemory.scala 15:19]
      data-type => SInt<32>
      depth => 1024
      read-latency => 0
      write-latency => 1
      reader => io_outputData_MPORT
      writer => MPORT
      read-under-write => undefined
    node _T = bits(io_address, 9, 0)
    node _GEN_0 = validif(io_write, _T) @[DataMemory.scala 17:18]
    node _GEN_1 = validif(io_write, clock) @[DataMemory.scala 17:18]
    node _GEN_2 = mux(io_write, UInt<1>("h1"), UInt<1>("h0")) @[DataMemory.scala 17:18 DataMemory.scala 15:19]
    node _GEN_3 = validif(io_write, UInt<1>("h1")) @[DataMemory.scala 17:18]
    node _GEN_4 = validif(io_write, io_data) @[DataMemory.scala 17:18]
    node _io_outputData_T = bits(io_address, 9, 0) @[DataMemory.scala 22:33]
    node _GEN_5 = validif(io_read, _io_outputData_T) @[DataMemory.scala 21:17 DataMemory.scala 22:33]
    node _GEN_6 = validif(io_read, clock) @[DataMemory.scala 21:17 DataMemory.scala 22:33]
    node _GEN_7 = mux(io_read, UInt<1>("h1"), UInt<1>("h0")) @[DataMemory.scala 21:17 DataMemory.scala 22:33 DataMemory.scala 15:19]
    node _GEN_8 = validif(io_read, memory.io_outputData_MPORT.data) @[DataMemory.scala 21:17 DataMemory.scala 22:19]
    io_outputData <= _GEN_8
    memory.io_outputData_MPORT.addr <= _GEN_5
    memory.io_outputData_MPORT.en <= _GEN_7
    memory.io_outputData_MPORT.clk <= _GEN_6
    memory.MPORT.addr <= _GEN_0
    memory.MPORT.en <= _GEN_2
    memory.MPORT.clk <= _GEN_1
    memory.MPORT.data <= _GEN_4
    memory.MPORT.mask <= _GEN_3

  module Control :
    input clock : Clock
    input reset : UInt<1>
    input io_opcode : UInt<7>
    output io_MemWrite : UInt<1>
    output io_Branch : UInt<1>
    output io_MemRead : UInt<1>
    output io_RegWrite : UInt<1>
    output io_MemToReg : UInt<1>
    output io_ALU_op : UInt<3>
    output io_operand_A_sel : UInt<2>
    output io_operand_B_sel : UInt<1>
    output io_Extend_sel : UInt<2>
    output io_Next_PC_select : UInt<2>

    node _T = eq(io_opcode, UInt<2>("h3")) @[Control.scala 21:20]
    node _T_1 = eq(io_opcode, UInt<4>("hf")) @[Control.scala 33:26]
    node _T_2 = eq(io_opcode, UInt<5>("h17")) @[Control.scala 33:58]
    node _T_3 = or(_T_1, _T_2) @[Control.scala 33:44]
    node _T_4 = eq(io_opcode, UInt<5>("h1b")) @[Control.scala 33:90]
    node _T_5 = or(_T_3, _T_4) @[Control.scala 33:76]
    node _T_6 = eq(io_opcode, UInt<6>("h3b")) @[Control.scala 33:122]
    node _T_7 = or(_T_5, _T_6) @[Control.scala 33:108]
    node _T_8 = eq(io_opcode, UInt<7>("h73")) @[Control.scala 33:154]
    node _T_9 = or(_T_7, _T_8) @[Control.scala 33:140]
    node _T_10 = eq(io_opcode, UInt<5>("h13")) @[Control.scala 46:25]
    node _T_11 = eq(io_opcode, UInt<6>("h23")) @[Control.scala 58:25]
    node _T_12 = eq(io_opcode, UInt<6>("h33")) @[Control.scala 70:25]
    node _T_13 = eq(io_opcode, UInt<6>("h37")) @[Control.scala 82:25]
    node _T_14 = eq(io_opcode, UInt<7>("h63")) @[Control.scala 97:25]
    node _T_15 = eq(io_opcode, UInt<7>("h67")) @[Control.scala 109:25]
    node _T_16 = eq(io_opcode, UInt<7>("h6f")) @[Control.scala 121:25]
    node _GEN_0 = validif(_T_16, UInt<1>("h0")) @[Control.scala 121:42 Control.scala 122:21]
    node _GEN_1 = validif(_T_16, UInt<1>("h1")) @[Control.scala 121:42 Control.scala 125:21]
    node _GEN_2 = validif(_T_16, UInt<2>("h3")) @[Control.scala 121:42 Control.scala 127:19]
    node _GEN_3 = validif(_T_16, UInt<2>("h2")) @[Control.scala 121:42 Control.scala 128:26]
    node _GEN_4 = mux(_T_15, UInt<1>("h0"), _GEN_0) @[Control.scala 109:42 Control.scala 110:21]
    node _GEN_5 = mux(_T_15, UInt<1>("h1"), _GEN_1) @[Control.scala 109:42 Control.scala 113:21]
    node _GEN_6 = mux(_T_15, UInt<2>("h3"), _GEN_2) @[Control.scala 109:42 Control.scala 115:19]
    node _GEN_7 = mux(_T_15, UInt<2>("h2"), _GEN_3) @[Control.scala 109:42 Control.scala 116:26]
    node _GEN_8 = mux(_T_15, UInt<2>("h3"), _GEN_3) @[Control.scala 109:42 Control.scala 119:27]
    node _GEN_9 = mux(_T_14, UInt<1>("h0"), _GEN_4) @[Control.scala 97:42 Control.scala 98:21]
    node _GEN_10 = mux(_T_14, UInt<1>("h1"), _GEN_4) @[Control.scala 97:42 Control.scala 99:19]
    node _GEN_11 = mux(_T_14, UInt<1>("h0"), _GEN_5) @[Control.scala 97:42 Control.scala 101:21]
    node _GEN_12 = mux(_T_14, UInt<2>("h2"), _GEN_6) @[Control.scala 97:42 Control.scala 103:19]
    node _GEN_13 = mux(_T_14, UInt<1>("h0"), _GEN_7) @[Control.scala 97:42 Control.scala 104:26]
    node _GEN_14 = mux(_T_14, UInt<1>("h1"), _GEN_8) @[Control.scala 97:42 Control.scala 107:27]
    node _GEN_15 = mux(_T_13, UInt<1>("h0"), _GEN_9) @[Control.scala 82:42 Control.scala 83:21]
    node _GEN_16 = mux(_T_13, UInt<1>("h0"), _GEN_10) @[Control.scala 82:42 Control.scala 84:19]
    node _GEN_17 = mux(_T_13, UInt<1>("h1"), _GEN_11) @[Control.scala 82:42 Control.scala 87:21]
    node _GEN_18 = mux(_T_13, UInt<3>("h6"), _GEN_12) @[Control.scala 82:42 Control.scala 89:19]
    node _GEN_19 = mux(_T_13, UInt<2>("h3"), _GEN_13) @[Control.scala 82:42 Control.scala 90:26]
    node _GEN_20 = mux(_T_13, UInt<1>("h1"), _GEN_9) @[Control.scala 82:42 Control.scala 91:26]
    node _GEN_21 = mux(_T_13, UInt<1>("h0"), _GEN_14) @[Control.scala 82:42 Control.scala 95:27]
    node _GEN_22 = mux(_T_12, UInt<1>("h0"), _GEN_15) @[Control.scala 70:42 Control.scala 71:21]
    node _GEN_23 = mux(_T_12, UInt<1>("h0"), _GEN_16) @[Control.scala 70:42 Control.scala 72:19]
    node _GEN_24 = mux(_T_12, UInt<1>("h1"), _GEN_17) @[Control.scala 70:42 Control.scala 74:21]
    node _GEN_25 = mux(_T_12, UInt<1>("h0"), _GEN_18) @[Control.scala 70:42 Control.scala 76:19]
    node _GEN_26 = mux(_T_12, UInt<1>("h0"), _GEN_19) @[Control.scala 70:42 Control.scala 77:26]
    node _GEN_27 = mux(_T_12, UInt<1>("h0"), _GEN_20) @[Control.scala 70:42 Control.scala 78:26]
    node _GEN_28 = mux(_T_12, UInt<1>("h0"), _GEN_21) @[Control.scala 70:42 Control.scala 80:27]
    node _GEN_29 = mux(_T_11, UInt<1>("h1"), _GEN_22) @[Control.scala 58:42 Control.scala 59:21]
    node _GEN_30 = mux(_T_11, UInt<1>("h0"), _GEN_23) @[Control.scala 58:42 Control.scala 60:19]
    node _GEN_31 = mux(_T_11, UInt<1>("h0"), _GEN_22) @[Control.scala 58:42 Control.scala 61:20]
    node _GEN_32 = mux(_T_11, UInt<1>("h0"), _GEN_24) @[Control.scala 58:42 Control.scala 62:21]
    node _GEN_33 = mux(_T_11, UInt<3>("h5"), _GEN_25) @[Control.scala 58:42 Control.scala 64:19]
    node _GEN_34 = mux(_T_11, UInt<1>("h0"), _GEN_26) @[Control.scala 58:42 Control.scala 65:26]
    node _GEN_35 = mux(_T_11, UInt<1>("h1"), _GEN_27) @[Control.scala 58:42 Control.scala 66:26]
    node _GEN_36 = mux(_T_11, UInt<2>("h2"), _GEN_27) @[Control.scala 58:42 Control.scala 67:23]
    node _GEN_37 = mux(_T_11, UInt<1>("h0"), _GEN_28) @[Control.scala 58:42 Control.scala 68:27]
    node _GEN_38 = mux(_T_10, UInt<1>("h0"), _GEN_29) @[Control.scala 46:42 Control.scala 47:21]
    node _GEN_39 = mux(_T_10, UInt<1>("h0"), _GEN_30) @[Control.scala 46:42 Control.scala 48:19]
    node _GEN_40 = mux(_T_10, UInt<1>("h0"), _GEN_31) @[Control.scala 46:42 Control.scala 49:20]
    node _GEN_41 = mux(_T_10, UInt<1>("h1"), _GEN_32) @[Control.scala 46:42 Control.scala 50:21]
    node _GEN_42 = mux(_T_10, UInt<1>("h1"), _GEN_33) @[Control.scala 46:42 Control.scala 52:19]
    node _GEN_43 = mux(_T_10, UInt<1>("h0"), _GEN_34) @[Control.scala 46:42 Control.scala 53:26]
    node _GEN_44 = mux(_T_10, UInt<1>("h1"), _GEN_35) @[Control.scala 46:42 Control.scala 54:26]
    node _GEN_45 = mux(_T_10, UInt<1>("h0"), _GEN_36) @[Control.scala 46:42 Control.scala 55:23]
    node _GEN_46 = mux(_T_10, UInt<1>("h0"), _GEN_37) @[Control.scala 46:42 Control.scala 56:27]
    node _GEN_47 = mux(_T_9, UInt<1>("h0"), _GEN_38) @[Control.scala 33:172 Control.scala 34:21]
    node _GEN_48 = mux(_T_9, UInt<1>("h0"), _GEN_39) @[Control.scala 33:172 Control.scala 35:19]
    node _GEN_49 = mux(_T_9, UInt<1>("h0"), _GEN_40) @[Control.scala 33:172 Control.scala 36:20]
    node _GEN_50 = mux(_T_9, UInt<1>("h0"), _GEN_41) @[Control.scala 33:172 Control.scala 37:21]
    node _GEN_51 = mux(_T_9, UInt<3>("h7"), _GEN_42) @[Control.scala 33:172 Control.scala 39:19]
    node _GEN_52 = mux(_T_9, UInt<1>("h0"), _GEN_43) @[Control.scala 33:172 Control.scala 40:26]
    node _GEN_53 = mux(_T_9, UInt<1>("h0"), _GEN_44) @[Control.scala 33:172 Control.scala 41:26]
    node _GEN_54 = mux(_T_9, UInt<1>("h0"), _GEN_45) @[Control.scala 33:172 Control.scala 42:23]
    node _GEN_55 = mux(_T_9, UInt<1>("h0"), _GEN_46) @[Control.scala 33:172 Control.scala 43:27]
    node _GEN_56 = mux(_T, UInt<1>("h0"), _GEN_47) @[Control.scala 21:37 Control.scala 22:21]
    node _GEN_57 = mux(_T, UInt<1>("h0"), _GEN_48) @[Control.scala 21:37 Control.scala 23:19]
    node _GEN_58 = mux(_T, UInt<1>("h1"), _GEN_49) @[Control.scala 21:37 Control.scala 24:20]
    node _GEN_59 = mux(_T, UInt<1>("h1"), _GEN_50) @[Control.scala 21:37 Control.scala 25:21]
    node _GEN_60 = mux(_T, UInt<3>("h4"), _GEN_51) @[Control.scala 21:37 Control.scala 27:19]
    node _GEN_61 = mux(_T, UInt<1>("h0"), _GEN_52) @[Control.scala 21:37 Control.scala 28:26]
    node _GEN_62 = mux(_T, UInt<1>("h1"), _GEN_53) @[Control.scala 21:37 Control.scala 29:26]
    node _GEN_63 = mux(_T, UInt<1>("h0"), _GEN_54) @[Control.scala 21:37 Control.scala 30:23]
    node _GEN_64 = mux(_T, UInt<1>("h0"), _GEN_55) @[Control.scala 21:37 Control.scala 31:27]
    io_MemWrite <= _GEN_56
    io_Branch <= _GEN_57
    io_MemRead <= _GEN_58
    io_RegWrite <= _GEN_59
    io_MemToReg <= _GEN_58
    io_ALU_op <= _GEN_60
    io_operand_A_sel <= _GEN_61
    io_operand_B_sel <= _GEN_62
    io_Extend_sel <= _GEN_63
    io_Next_PC_select <= _GEN_64

  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_in_A : SInt<32>
    input io_in_B : SInt<32>
    input io_alu_Op : UInt<5>
    output io_out : SInt<32>
    output io_branch : UInt<1>

    node _out_T = eq(io_alu_Op, UInt<5>("h0")) @[ALU.scala 48:19]
    node _out_T_1 = eq(io_alu_Op, UInt<5>("h0")) @[ALU.scala 48:44]
    node _out_T_2 = or(_out_T, _out_T_1) @[ALU.scala 48:31]
    node _out_T_3 = eq(io_alu_Op, UInt<5>("h0")) @[ALU.scala 48:70]
    node _out_T_4 = or(_out_T_2, _out_T_3) @[ALU.scala 48:57]
    node _out_T_5 = eq(io_alu_Op, UInt<5>("h0")) @[ALU.scala 48:94]
    node _out_T_6 = or(_out_T_4, _out_T_5) @[ALU.scala 48:81]
    node _out_T_7 = eq(io_alu_Op, UInt<5>("h0")) @[ALU.scala 48:118]
    node _out_T_8 = or(_out_T_6, _out_T_7) @[ALU.scala 48:105]
    node _out_T_9 = eq(io_alu_Op, UInt<5>("h0")) @[ALU.scala 48:143]
    node _out_T_10 = or(_out_T_8, _out_T_9) @[ALU.scala 48:130]
    node _out_T_11 = add(io_in_A, io_in_B) @[ALU.scala 48:167]
    node _out_T_12 = tail(_out_T_11, 1) @[ALU.scala 48:167]
    node _out_T_13 = asSInt(_out_T_12) @[ALU.scala 48:167]
    node _out_T_14 = eq(io_alu_Op, UInt<5>("h1")) @[ALU.scala 49:19]
    node _out_T_15 = eq(io_alu_Op, UInt<5>("h1")) @[ALU.scala 49:44]
    node _out_T_16 = or(_out_T_14, _out_T_15) @[ALU.scala 49:31]
    node _out_T_17 = asUInt(io_in_A) @[ALU.scala 49:67]
    node _out_T_18 = bits(io_in_B, 18, 0) @[ALU.scala 49:84]
    node _out_T_19 = dshl(_out_T_17, _out_T_18) @[ALU.scala 49:74]
    node _out_T_20 = asSInt(_out_T_19) @[ALU.scala 49:100]
    node _out_T_21 = eq(io_alu_Op, UInt<5>("h2")) @[ALU.scala 50:19]
    node _out_T_22 = eq(io_alu_Op, UInt<5>("h2")) @[ALU.scala 50:44]
    node _out_T_23 = or(_out_T_21, _out_T_22) @[ALU.scala 50:31]
    node _out_T_24 = lt(io_in_A, io_in_B) @[ALU.scala 50:70]
    node _out_T_25 = mux(_out_T_24, asSInt(UInt<2>("h1")), asSInt(UInt<1>("h0"))) @[ALU.scala 50:61]
    node _out_T_26 = eq(io_alu_Op, UInt<5>("h3")) @[ALU.scala 51:19]
    node _out_T_27 = eq(io_alu_Op, UInt<5>("h3")) @[ALU.scala 51:45]
    node _out_T_28 = or(_out_T_26, _out_T_27) @[ALU.scala 51:32]
    node _out_T_29 = lt(io_in_A, io_in_B) @[ALU.scala 51:72]
    node _out_T_30 = mux(_out_T_29, asSInt(UInt<2>("h1")), asSInt(UInt<1>("h0"))) @[ALU.scala 51:63]
    node _out_T_31 = eq(io_alu_Op, UInt<5>("h4")) @[ALU.scala 52:19]
    node _out_T_32 = eq(io_alu_Op, UInt<5>("h4")) @[ALU.scala 52:44]
    node _out_T_33 = or(_out_T_31, _out_T_32) @[ALU.scala 52:31]
    node _out_T_34 = xor(io_in_A, io_in_B) @[ALU.scala 52:67]
    node _out_T_35 = asSInt(_out_T_34) @[ALU.scala 52:67]
    node _out_T_36 = eq(io_alu_Op, UInt<5>("h5")) @[ALU.scala 53:19]
    node _out_T_37 = eq(io_alu_Op, UInt<5>("h5")) @[ALU.scala 53:44]
    node _out_T_38 = or(_out_T_36, _out_T_37) @[ALU.scala 53:31]
    node _out_T_39 = asUInt(io_in_A) @[ALU.scala 53:67]
    node _out_T_40 = bits(io_in_B, 18, 0) @[ALU.scala 53:84]
    node _out_T_41 = dshr(_out_T_39, _out_T_40) @[ALU.scala 53:74]
    node _out_T_42 = asSInt(_out_T_41) @[ALU.scala 53:100]
    node _out_T_43 = eq(io_alu_Op, UInt<5>("h6")) @[ALU.scala 54:19]
    node _out_T_44 = eq(io_alu_Op, UInt<5>("h6")) @[ALU.scala 54:43]
    node _out_T_45 = or(_out_T_43, _out_T_44) @[ALU.scala 54:30]
    node _out_T_46 = or(io_in_A, io_in_B) @[ALU.scala 54:65]
    node _out_T_47 = asSInt(_out_T_46) @[ALU.scala 54:65]
    node _out_T_48 = eq(io_alu_Op, UInt<5>("h7")) @[ALU.scala 55:19]
    node _out_T_49 = eq(io_alu_Op, UInt<5>("h7")) @[ALU.scala 55:44]
    node _out_T_50 = or(_out_T_48, _out_T_49) @[ALU.scala 55:31]
    node _out_T_51 = and(io_in_A, io_in_B) @[ALU.scala 55:67]
    node _out_T_52 = asSInt(_out_T_51) @[ALU.scala 55:67]
    node _out_T_53 = eq(io_alu_Op, UInt<5>("h8")) @[ALU.scala 56:19]
    node _out_T_54 = sub(io_in_A, io_in_B) @[ALU.scala 56:41]
    node _out_T_55 = tail(_out_T_54, 1) @[ALU.scala 56:41]
    node _out_T_56 = asSInt(_out_T_55) @[ALU.scala 56:41]
    node _out_T_57 = eq(io_alu_Op, UInt<5>("hd")) @[ALU.scala 57:19]
    node _out_T_58 = eq(io_alu_Op, UInt<5>("hd")) @[ALU.scala 57:44]
    node _out_T_59 = or(_out_T_57, _out_T_58) @[ALU.scala 57:31]
    node _out_T_60 = asUInt(io_in_A) @[ALU.scala 57:67]
    node _out_T_61 = bits(io_in_B, 18, 0) @[ALU.scala 57:84]
    node _out_T_62 = dshr(_out_T_60, _out_T_61) @[ALU.scala 57:74]
    node _out_T_63 = asSInt(_out_T_62) @[ALU.scala 57:100]
    node _out_T_64 = eq(io_alu_Op, UInt<5>("h1f")) @[ALU.scala 58:19]
    node _out_T_65 = eq(io_alu_Op, UInt<5>("h1f")) @[ALU.scala 58:44]
    node _out_T_66 = or(_out_T_64, _out_T_65) @[ALU.scala 58:31]
    node _out_T_67 = mux(_out_T_66, io_in_A, asSInt(UInt<1>("h0"))) @[ALU.scala 58:8]
    node _out_T_68 = mux(_out_T_59, _out_T_63, _out_T_67) @[ALU.scala 57:8]
    node _out_T_69 = mux(_out_T_53, _out_T_56, _out_T_68) @[ALU.scala 56:8]
    node _out_T_70 = mux(_out_T_50, _out_T_52, _out_T_69) @[ALU.scala 55:8]
    node _out_T_71 = mux(_out_T_45, _out_T_47, _out_T_70) @[ALU.scala 54:8]
    node _out_T_72 = mux(_out_T_38, _out_T_42, _out_T_71) @[ALU.scala 53:8]
    node _out_T_73 = mux(_out_T_33, _out_T_35, _out_T_72) @[ALU.scala 52:8]
    node _out_T_74 = mux(_out_T_28, _out_T_30, _out_T_73) @[ALU.scala 51:8]
    node _out_T_75 = mux(_out_T_23, _out_T_25, _out_T_74) @[ALU.scala 50:8]
    node _out_T_76 = mux(_out_T_16, _out_T_20, _out_T_75) @[ALU.scala 49:8]
    node out = mux(_out_T_10, _out_T_13, _out_T_76) @[ALU.scala 48:8]
    node fnct3 = bits(io_alu_Op, 2, 0) @[ALU.scala 61:26]
    node _T = bits(io_alu_Op, 4, 3) @[ALU.scala 62:19]
    node _T_1 = eq(_T, UInt<2>("h2")) @[ALU.scala 62:25]
    node _T_2 = eq(fnct3, UInt<1>("h0")) @[ALU.scala 64:22]
    node _io_branch_T = eq(io_in_A, io_in_B) @[ALU.scala 65:34]
    node _T_3 = eq(fnct3, UInt<1>("h1")) @[ALU.scala 67:28]
    node _io_branch_T_1 = neq(io_in_A, io_in_B) @[ALU.scala 68:34]
    node _T_4 = eq(fnct3, UInt<3>("h4")) @[ALU.scala 70:28]
    node _io_branch_T_2 = lt(io_in_A, io_in_B) @[ALU.scala 71:34]
    node _T_5 = eq(fnct3, UInt<3>("h5")) @[ALU.scala 73:28]
    node _io_branch_T_3 = geq(io_in_A, io_in_B) @[ALU.scala 74:34]
    node _T_6 = eq(fnct3, UInt<3>("h7")) @[ALU.scala 76:28]
    node _io_branch_T_4 = geq(io_in_A, io_in_B) @[ALU.scala 77:35]
    node _T_7 = eq(fnct3, UInt<3>("h6")) @[ALU.scala 79:28]
    node _io_branch_T_5 = leq(io_in_A, io_in_B) @[ALU.scala 80:35]
    node _GEN_0 = mux(_T_7, _io_branch_T_5, UInt<1>("h0")) @[ALU.scala 79:38 ALU.scala 80:23 ALU.scala 82:23]
    node _GEN_1 = mux(_T_6, _io_branch_T_4, _GEN_0) @[ALU.scala 76:38 ALU.scala 77:23]
    node _GEN_2 = mux(_T_5, _io_branch_T_3, _GEN_1) @[ALU.scala 73:38 ALU.scala 74:23]
    node _GEN_3 = mux(_T_4, _io_branch_T_2, _GEN_2) @[ALU.scala 70:38 ALU.scala 71:23]
    node _GEN_4 = mux(_T_3, _io_branch_T_1, _GEN_3) @[ALU.scala 67:38 ALU.scala 68:23]
    node _GEN_5 = mux(_T_2, _io_branch_T, _GEN_4) @[ALU.scala 64:32 ALU.scala 65:23]
    node _GEN_6 = validif(_T_1, _GEN_5) @[ALU.scala 62:37]
    io_out <= asSInt(bits(out, 31, 0)) @[ALU.scala 60:8]
    io_branch <= _GEN_6

  module ALU_Control :
    input clock : Clock
    input reset : UInt<1>
    input io_ALU_op : UInt<3>
    input io_func3 : UInt<3>
    input io_func7 : UInt<1>
    output io_out : UInt<5>

    node _T = eq(io_ALU_op, UInt<1>("h0")) @[ALU_Control.scala 14:20]
    node io_out_hi = cat(UInt<1>("h0"), io_func7) @[Cat.scala 30:58]
    node _io_out_T = cat(io_out_hi, io_func3) @[Cat.scala 30:58]
    node _T_1 = eq(io_ALU_op, UInt<1>("h1")) @[ALU_Control.scala 16:26]
    node io_out_hi_1 = cat(UInt<1>("h0"), UInt<1>("h0")) @[Cat.scala 30:58]
    node _io_out_T_1 = cat(io_out_hi_1, io_func3) @[Cat.scala 30:58]
    node _T_2 = eq(io_ALU_op, UInt<3>("h5")) @[ALU_Control.scala 18:26]
    node _T_3 = eq(io_ALU_op, UInt<2>("h2")) @[ALU_Control.scala 20:26]
    node _io_out_T_2 = cat(UInt<2>("h2"), io_func3) @[Cat.scala 30:58]
    node _T_4 = eq(io_ALU_op, UInt<3>("h6")) @[ALU_Control.scala 22:26]
    node _T_5 = eq(io_ALU_op, UInt<2>("h3")) @[ALU_Control.scala 24:26]
    node _T_6 = eq(io_ALU_op, UInt<3>("h4")) @[ALU_Control.scala 26:26]
    node _T_7 = eq(io_ALU_op, UInt<3>("h7")) @[ALU_Control.scala 28:26]
    node _GEN_0 = validif(_T_7, UInt<1>("h0")) @[ALU_Control.scala 28:39 ALU_Control.scala 29:16]
    node _GEN_1 = mux(_T_6, UInt<1>("h0"), _GEN_0) @[ALU_Control.scala 26:39 ALU_Control.scala 27:16]
    node _GEN_2 = mux(_T_5, UInt<5>("h1f"), _GEN_1) @[ALU_Control.scala 24:39 ALU_Control.scala 25:16]
    node _GEN_3 = mux(_T_4, UInt<1>("h0"), _GEN_2) @[ALU_Control.scala 22:39 ALU_Control.scala 23:16]
    node _GEN_4 = mux(_T_3, _io_out_T_2, _GEN_3) @[ALU_Control.scala 20:39 ALU_Control.scala 21:16]
    node _GEN_5 = mux(_T_2, UInt<1>("h0"), _GEN_4) @[ALU_Control.scala 18:39 ALU_Control.scala 19:16]
    node _GEN_6 = mux(_T_1, _io_out_T_1, _GEN_5) @[ALU_Control.scala 16:39 ALU_Control.scala 17:16]
    node _GEN_7 = mux(_T, _io_out_T, _GEN_6) @[ALU_Control.scala 14:33 ALU_Control.scala 15:16]
    io_out <= _GEN_7

  module Top :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<2>

    inst PC of PC @[Top.scala 14:20]
    inst PC4 of PC4 @[Top.scala 15:21]
    inst RegFile of RegisterFile @[Top.scala 16:25]
    inst InsMem of InstructionMemory @[Top.scala 17:24]
    inst ImmeGen of ImmdValGen @[Top.scala 18:25]
    inst DataMem of DataMemory @[Top.scala 19:25]
    inst Control of Control @[Top.scala 20:25]
    inst ALU of ALU @[Top.scala 21:21]
    inst ALU_Control of ALU_Control @[Top.scala 22:29]
    node _PC_io_in_T = and(Control.io_Branch, ALU.io_branch) @[Top.scala 30:55]
    node _PC_io_in_T_1 = mux(_PC_io_in_T, ImmeGen.io_immd_se, PC4.io_out) @[Top.scala 30:35]
    node _PC_io_in_T_2 = asUInt(RegFile.io_ReadData1) @[Top.scala 32:76]
    node _PC_io_in_T_3 = add(ImmeGen.io_immd_se, _PC_io_in_T_2) @[Top.scala 32:53]
    node _PC_io_in_T_4 = tail(_PC_io_in_T_3, 1) @[Top.scala 32:53]
    node _PC_io_in_T_5 = and(_PC_io_in_T_4, UInt<32>("hfffffffe")) @[Top.scala 32:84]
    node _PC_io_in_T_6 = eq(UInt<1>("h1"), Control.io_Next_PC_select) @[Mux.scala 80:60]
    node _PC_io_in_T_7 = mux(_PC_io_in_T_6, _PC_io_in_T_1, PC4.io_out) @[Mux.scala 80:57]
    node _PC_io_in_T_8 = eq(UInt<2>("h2"), Control.io_Next_PC_select) @[Mux.scala 80:60]
    node _PC_io_in_T_9 = mux(_PC_io_in_T_8, ImmeGen.io_immd_se, _PC_io_in_T_7) @[Mux.scala 80:57]
    node _PC_io_in_T_10 = eq(UInt<2>("h3"), Control.io_Next_PC_select) @[Mux.scala 80:60]
    node _PC_io_in_T_11 = mux(_PC_io_in_T_10, _PC_io_in_T_5, _PC_io_in_T_9) @[Mux.scala 80:57]
    node _InsMem_io_address_T = bits(PC.io_out, 11, 2) @[Top.scala 41:35]
    node _Control_io_opcode_T = bits(InsMem.io_data, 6, 0) @[Top.scala 44:40]
    node _ALU_Control_io_func3_T = bits(InsMem.io_data, 14, 12) @[Top.scala 47:43]
    node _ALU_Control_io_func7_T = bits(InsMem.io_data, 30, 30) @[Top.scala 48:43]
    node _RegFile_io_ReadReg1_T = bits(InsMem.io_data, 19, 15) @[Top.scala 53:42]
    node _RegFile_io_ReadReg2_T = bits(InsMem.io_data, 24, 20) @[Top.scala 54:42]
    node _RegFile_io_WriteReg_T = bits(InsMem.io_data, 11, 7) @[Top.scala 55:42]
    node _RegFile_io_WriteData_T = mux(Control.io_MemToReg, DataMem.io_outputData, ALU.io_out) @[Top.scala 56:32]
    node _ALU_io_in_A_T = asSInt(PC4.io_out) @[Top.scala 62:43]
    node _ALU_io_in_A_T_1 = asSInt(PC.io_out) @[Top.scala 63:42]
    node _ALU_io_in_A_T_2 = eq(UInt<1>("h1"), Control.io_operand_A_sel) @[Mux.scala 80:60]
    node _ALU_io_in_A_T_3 = mux(_ALU_io_in_A_T_2, _ALU_io_in_A_T, RegFile.io_ReadData1) @[Mux.scala 80:57]
    node _ALU_io_in_A_T_4 = eq(UInt<2>("h2"), Control.io_operand_A_sel) @[Mux.scala 80:60]
    node _ALU_io_in_A_T_5 = mux(_ALU_io_in_A_T_4, _ALU_io_in_A_T_1, _ALU_io_in_A_T_3) @[Mux.scala 80:57]
    node _ALU_io_in_A_T_6 = eq(UInt<2>("h3"), Control.io_operand_A_sel) @[Mux.scala 80:60]
    node _ALU_io_in_A_T_7 = mux(_ALU_io_in_A_T_6, RegFile.io_ReadData1, _ALU_io_in_A_T_5) @[Mux.scala 80:57]
    node _ALU_io_in_B_T = asSInt(ImmeGen.io_immd_se) @[Top.scala 66:70]
    node _ALU_io_in_B_T_1 = mux(Control.io_operand_B_sel, _ALU_io_in_B_T, RegFile.io_ReadData2) @[Top.scala 66:23]
    node _DataMem_io_address_T = bits(ALU.io_out, 9, 2) @[Top.scala 69:38]
    io_out <= bits(PC.io_out, 1, 0) @[Top.scala 25:12]
    PC.clock <= clock
    PC.reset <= reset
    PC.io_in <= _PC_io_in_T_11 @[Top.scala 28:14]
    PC4.clock <= clock
    PC4.reset <= reset
    PC4.io_pc <= PC.io_out @[Top.scala 34:15]
    RegFile.clock <= clock
    RegFile.reset <= reset
    RegFile.io_ReadReg1 <= _RegFile_io_ReadReg1_T @[Top.scala 53:25]
    RegFile.io_ReadReg2 <= _RegFile_io_ReadReg2_T @[Top.scala 54:25]
    RegFile.io_RegWrite <= Control.io_RegWrite @[Top.scala 52:25]
    RegFile.io_WriteReg <= _RegFile_io_WriteReg_T @[Top.scala 55:25]
    RegFile.io_WriteData <= _RegFile_io_WriteData_T @[Top.scala 56:26]
    InsMem.clock <= clock
    InsMem.reset <= reset
    InsMem.io_address <= _InsMem_io_address_T @[Top.scala 41:23]
    ImmeGen.clock <= clock
    ImmeGen.reset <= reset
    ImmeGen.io_instr <= InsMem.io_data @[Top.scala 37:22]
    ImmeGen.io_PC <= PC.io_out @[Top.scala 38:19]
    DataMem.clock <= clock
    DataMem.reset <= reset
    DataMem.io_address <= _DataMem_io_address_T @[Top.scala 69:24]
    DataMem.io_data <= RegFile.io_ReadData2 @[Top.scala 70:21]
    DataMem.io_write <= Control.io_MemWrite @[Top.scala 71:22]
    DataMem.io_read <= Control.io_MemRead @[Top.scala 72:21]
    Control.clock <= clock
    Control.reset <= reset
    Control.io_opcode <= _Control_io_opcode_T @[Top.scala 44:23]
    ALU.clock <= clock
    ALU.reset <= reset
    ALU.io_in_A <= _ALU_io_in_A_T_7 @[Top.scala 60:17]
    ALU.io_in_B <= _ALU_io_in_B_T_1 @[Top.scala 66:17]
    ALU.io_alu_Op <= ALU_Control.io_out @[Top.scala 59:19]
    ALU_Control.clock <= clock
    ALU_Control.reset <= reset
    ALU_Control.io_ALU_op <= Control.io_ALU_op @[Top.scala 49:27]
    ALU_Control.io_func3 <= _ALU_Control_io_func3_T @[Top.scala 47:26]
    ALU_Control.io_func7 <= _ALU_Control_io_func7_T @[Top.scala 48:26]
