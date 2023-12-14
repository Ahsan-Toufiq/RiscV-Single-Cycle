circuit Control :
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
    node _GEN_8 = mux(_T_15, UInt<2>("h3"), _GEN_1) @[Control.scala 109:42 Control.scala 119:27]
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
    node _GEN_20 = mux(_T_13, UInt<1>("h1"), _GEN_10) @[Control.scala 82:42 Control.scala 91:26]
    node _GEN_21 = mux(_T_13, UInt<1>("h1"), _GEN_9) @[Control.scala 82:42 Control.scala 93:23]
    node _GEN_22 = mux(_T_13, UInt<1>("h0"), _GEN_14) @[Control.scala 82:42 Control.scala 95:27]
    node _GEN_23 = mux(_T_12, UInt<1>("h0"), _GEN_15) @[Control.scala 70:42 Control.scala 71:21]
    node _GEN_24 = mux(_T_12, UInt<1>("h0"), _GEN_16) @[Control.scala 70:42 Control.scala 72:19]
    node _GEN_25 = mux(_T_12, UInt<1>("h1"), _GEN_17) @[Control.scala 70:42 Control.scala 74:21]
    node _GEN_26 = mux(_T_12, UInt<1>("h0"), _GEN_18) @[Control.scala 70:42 Control.scala 76:19]
    node _GEN_27 = mux(_T_12, UInt<1>("h0"), _GEN_19) @[Control.scala 70:42 Control.scala 77:26]
    node _GEN_28 = mux(_T_12, UInt<1>("h0"), _GEN_20) @[Control.scala 70:42 Control.scala 78:26]
    node _GEN_29 = mux(_T_12, UInt<1>("h0"), _GEN_21) @[Control.scala 70:42 Control.scala 79:23]
    node _GEN_30 = mux(_T_12, UInt<1>("h0"), _GEN_22) @[Control.scala 70:42 Control.scala 80:27]
    node _GEN_31 = mux(_T_11, UInt<1>("h1"), _GEN_23) @[Control.scala 58:42 Control.scala 59:21]
    node _GEN_32 = mux(_T_11, UInt<1>("h0"), _GEN_24) @[Control.scala 58:42 Control.scala 60:19]
    node _GEN_33 = mux(_T_11, UInt<1>("h0"), _GEN_23) @[Control.scala 58:42 Control.scala 61:20]
    node _GEN_34 = mux(_T_11, UInt<1>("h0"), _GEN_25) @[Control.scala 58:42 Control.scala 62:21]
    node _GEN_35 = mux(_T_11, UInt<3>("h5"), _GEN_26) @[Control.scala 58:42 Control.scala 64:19]
    node _GEN_36 = mux(_T_11, UInt<1>("h0"), _GEN_27) @[Control.scala 58:42 Control.scala 65:26]
    node _GEN_37 = mux(_T_11, UInt<1>("h1"), _GEN_28) @[Control.scala 58:42 Control.scala 66:26]
    node _GEN_38 = mux(_T_11, UInt<2>("h2"), _GEN_29) @[Control.scala 58:42 Control.scala 67:23]
    node _GEN_39 = mux(_T_11, UInt<1>("h0"), _GEN_30) @[Control.scala 58:42 Control.scala 68:27]
    node _GEN_40 = mux(_T_10, UInt<1>("h0"), _GEN_31) @[Control.scala 46:42 Control.scala 47:21]
    node _GEN_41 = mux(_T_10, UInt<1>("h0"), _GEN_32) @[Control.scala 46:42 Control.scala 48:19]
    node _GEN_42 = mux(_T_10, UInt<1>("h0"), _GEN_33) @[Control.scala 46:42 Control.scala 49:20]
    node _GEN_43 = mux(_T_10, UInt<1>("h1"), _GEN_34) @[Control.scala 46:42 Control.scala 50:21]
    node _GEN_44 = mux(_T_10, UInt<1>("h1"), _GEN_35) @[Control.scala 46:42 Control.scala 52:19]
    node _GEN_45 = mux(_T_10, UInt<1>("h0"), _GEN_36) @[Control.scala 46:42 Control.scala 53:26]
    node _GEN_46 = mux(_T_10, UInt<1>("h1"), _GEN_37) @[Control.scala 46:42 Control.scala 54:26]
    node _GEN_47 = mux(_T_10, UInt<1>("h0"), _GEN_38) @[Control.scala 46:42 Control.scala 55:23]
    node _GEN_48 = mux(_T_10, UInt<1>("h0"), _GEN_39) @[Control.scala 46:42 Control.scala 56:27]
    node _GEN_49 = mux(_T_9, UInt<1>("h0"), _GEN_40) @[Control.scala 33:172 Control.scala 34:21]
    node _GEN_50 = mux(_T_9, UInt<1>("h0"), _GEN_41) @[Control.scala 33:172 Control.scala 35:19]
    node _GEN_51 = mux(_T_9, UInt<1>("h0"), _GEN_42) @[Control.scala 33:172 Control.scala 36:20]
    node _GEN_52 = mux(_T_9, UInt<1>("h0"), _GEN_43) @[Control.scala 33:172 Control.scala 37:21]
    node _GEN_53 = mux(_T_9, UInt<3>("h7"), _GEN_44) @[Control.scala 33:172 Control.scala 39:19]
    node _GEN_54 = mux(_T_9, UInt<1>("h0"), _GEN_45) @[Control.scala 33:172 Control.scala 40:26]
    node _GEN_55 = mux(_T_9, UInt<1>("h0"), _GEN_46) @[Control.scala 33:172 Control.scala 41:26]
    node _GEN_56 = mux(_T_9, UInt<1>("h0"), _GEN_47) @[Control.scala 33:172 Control.scala 42:23]
    node _GEN_57 = mux(_T_9, UInt<1>("h0"), _GEN_48) @[Control.scala 33:172 Control.scala 43:27]
    node _GEN_58 = mux(_T, UInt<1>("h1"), _GEN_49) @[Control.scala 21:37 Control.scala 22:21]
    node _GEN_59 = mux(_T, UInt<1>("h1"), _GEN_50) @[Control.scala 21:37 Control.scala 23:19]
    node _GEN_60 = mux(_T, UInt<1>("h1"), _GEN_51) @[Control.scala 21:37 Control.scala 24:20]
    node _GEN_61 = mux(_T, UInt<1>("h1"), _GEN_52) @[Control.scala 21:37 Control.scala 25:21]
    node _GEN_62 = mux(_T, UInt<3>("h4"), _GEN_53) @[Control.scala 21:37 Control.scala 27:19]
    node _GEN_63 = mux(_T, UInt<1>("h0"), _GEN_54) @[Control.scala 21:37 Control.scala 28:26]
    node _GEN_64 = mux(_T, UInt<1>("h1"), _GEN_55) @[Control.scala 21:37 Control.scala 29:26]
    node _GEN_65 = mux(_T, UInt<1>("h0"), _GEN_56) @[Control.scala 21:37 Control.scala 30:23]
    node _GEN_66 = mux(_T, UInt<1>("h0"), _GEN_57) @[Control.scala 21:37 Control.scala 31:27]
    io_MemWrite <= _GEN_58
    io_Branch <= _GEN_59
    io_MemRead <= _GEN_60
    io_RegWrite <= _GEN_61
    io_MemToReg <= _GEN_60
    io_ALU_op <= _GEN_62
    io_operand_A_sel <= _GEN_63
    io_operand_B_sel <= _GEN_64
    io_Extend_sel <= _GEN_65
    io_Next_PC_select <= _GEN_66
