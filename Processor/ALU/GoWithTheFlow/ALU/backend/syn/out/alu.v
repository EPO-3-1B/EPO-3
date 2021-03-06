
// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Dec 16 2020 15:33:24 CET (Dec 16 2020 14:33:24 UTC)

// Verification Directory fv/alu 

module eight_bit_pass(a, b, o);
  input [7:0] a, b;
  output [7:0] o;
  wire [7:0] a, b;
  wire [7:0] o;
endmodule

module alu(clk, reset, adl_in, adl_out, sb_in, sb_out, control, avr,
     acr, hc, clk_2, add_adl, add_sb6, add_sb7, o_add, sb_add,
     inv_db_add, db_add, adl_add);
  input clk, reset, clk_2, add_adl, add_sb6, add_sb7, o_add, sb_add,
       inv_db_add, db_add, adl_add;
  input [7:0] adl_in, sb_in;
  input [9:0] control;
  output [7:0] adl_out, sb_out;
  output avr, acr, hc;
  wire clk, reset, clk_2, add_adl, add_sb6, add_sb7, o_add, sb_add,
       inv_db_add, db_add, adl_add;
  wire [7:0] adl_in, sb_in;
  wire [9:0] control;
  wire [7:0] adl_out, sb_out;
  wire avr, acr, hc;
  wire [7:0] b;
  wire [7:0] B_REGISTER_data_in;
  wire [7:0] HOLD_REGISTER_reg_out;
  wire [7:0] a;
  wire [7:0] output_alu;
  wire [7:0] alu_logicmap_o_or;
  wire A_REGSISTER_L1_n_0, A_REGSISTER_L1_n_1, A_REGSISTER_n_0,
       A_REGSISTER_n_1, A_REGSISTER_n_2, A_REGSISTER_n_3,
       A_REGSISTER_n_4, A_REGSISTER_n_5;
  wire A_REGSISTER_n_6, A_REGSISTER_n_7, A_REGSISTER_n_8,
       A_REGSISTER_n_9, A_REGSISTER_n_10, A_REGSISTER_n_11,
       B_REGISTER_l1_n_0, B_REGISTER_n_0;
  wire B_REGISTER_n_1, B_REGISTER_n_2, B_REGISTER_n_3, B_REGISTER_n_4,
       B_REGISTER_n_5, B_REGISTER_n_6, B_REGISTER_n_7, B_REGISTER_n_8;
  wire B_REGISTER_n_9, B_REGISTER_n_10, B_REGISTER_n_11,
       B_REGISTER_n_12, HOLD_REGISTER_l1_n_0, HOLD_REGISTER_n_0,
       HOLD_REGISTER_n_1, HOLD_REGISTER_n_2;
  wire HOLD_REGISTER_n_3, HOLD_REGISTER_n_4, HOLD_REGISTER_n_5,
       HOLD_REGISTER_n_6, HOLD_REGISTER_n_7, HOLD_REGISTER_n_8,
       alu_logicmap_n_0, alu_logicmap_n_1;
  wire alu_logicmap_n_2, alu_logicmap_n_3, alu_logicmap_n_4,
       alu_logicmap_n_5, alu_logicmap_n_6, alu_logicmap_n_7,
       alu_logicmap_n_8, alu_logicmap_n_9;
  wire alu_logicmap_n_10, alu_logicmap_n_11, alu_logicmap_n_12,
       alu_logicmap_n_13, alu_logicmap_n_14, alu_logicmap_n_15,
       alu_logicmap_n_16, alu_logicmap_n_17;
  wire alu_logicmap_n_18, alu_logicmap_n_19, alu_logicmap_n_20,
       alu_logicmap_n_21, alu_logicmap_n_22, alu_logicmap_n_23,
       alu_logicmap_n_24, alu_logicmap_n_25;
  wire alu_logicmap_n_26, alu_logicmap_n_27, alu_logicmap_n_28,
       alu_logicmap_n_29, alu_logicmap_n_30, alu_logicmap_n_31,
       alu_logicmap_n_32, alu_logicmap_n_33;
  wire alu_logicmap_n_34, alu_logicmap_n_35, alu_logicmap_n_36,
       alu_logicmap_n_37, alu_logicmap_n_38, alu_logicmap_n_39,
       alu_logicmap_n_40, alu_logicmap_n_41;
  wire alu_logicmap_n_42, alu_logicmap_n_43, alu_logicmap_n_44,
       alu_logicmap_n_45, alu_logicmap_n_46, alu_logicmap_n_47,
       alu_logicmap_n_48, alu_logicmap_n_49;
  wire alu_logicmap_n_51, alu_logicmap_n_53, alu_logicmap_n_54,
       alu_logicmap_n_55, alu_logicmap_n_56, alu_logicmap_n_57,
       alu_logicmap_n_58, alu_logicmap_n_59;
  wire alu_logicmap_n_60, alu_logicmap_n_61, alu_logicmap_n_62,
       alu_logicmap_n_63, alu_logicmap_n_64, alu_logicmap_n_65,
       \alu_logicmap_o_pass[0]_187 , \alu_logicmap_o_pass[1]_186 ;
  wire \alu_logicmap_o_pass[2]_185 , \alu_logicmap_o_pass[3]_184 ,
       \alu_logicmap_o_pass[4]_183 , \alu_logicmap_o_pass[5]_182 ,
       \alu_logicmap_o_pass[6]_181 , \alu_logicmap_o_pass[7]_180 ,
       logic_0_1_net;
  eight_bit_pass alu_logicmap_PASS(.a (a), .b (b), .o ({logic_0_1_net,
       a[7:1]}));
  AO221D0BWP7T B_REGISTER_g414(.A1 (b[5]), .A2 (B_REGISTER_n_12), .B1
       (B_REGISTER_n_2), .B2 (sb_in[5]), .C (B_REGISTER_n_10), .Z
       (B_REGISTER_data_in[5]));
  AO221D0BWP7T B_REGISTER_g415(.A1 (b[6]), .A2 (B_REGISTER_n_12), .B1
       (B_REGISTER_n_2), .B2 (sb_in[6]), .C (B_REGISTER_n_8), .Z
       (B_REGISTER_data_in[6]));
  AO221D0BWP7T B_REGISTER_g416(.A1 (b[7]), .A2 (B_REGISTER_n_12), .B1
       (B_REGISTER_n_2), .B2 (sb_in[7]), .C (B_REGISTER_n_11), .Z
       (B_REGISTER_data_in[7]));
  AO221D0BWP7T B_REGISTER_g417(.A1 (b[1]), .A2 (B_REGISTER_n_12), .B1
       (B_REGISTER_n_2), .B2 (sb_in[1]), .C (B_REGISTER_n_9), .Z
       (B_REGISTER_data_in[1]));
  AO221D0BWP7T B_REGISTER_g418(.A1 (b[3]), .A2 (B_REGISTER_n_12), .B1
       (B_REGISTER_n_2), .B2 (sb_in[3]), .C (B_REGISTER_n_5), .Z
       (B_REGISTER_data_in[3]));
  AO221D0BWP7T B_REGISTER_g419(.A1 (b[0]), .A2 (B_REGISTER_n_12), .B1
       (B_REGISTER_n_2), .B2 (sb_in[0]), .C (B_REGISTER_n_6), .Z
       (B_REGISTER_data_in[0]));
  AO221D0BWP7T B_REGISTER_g420(.A1 (b[4]), .A2 (B_REGISTER_n_12), .B1
       (B_REGISTER_n_2), .B2 (sb_in[4]), .C (B_REGISTER_n_7), .Z
       (B_REGISTER_data_in[4]));
  AO221D0BWP7T B_REGISTER_g421(.A1 (b[2]), .A2 (B_REGISTER_n_12), .B1
       (B_REGISTER_n_2), .B2 (sb_in[2]), .C (B_REGISTER_n_4), .Z
       (B_REGISTER_data_in[2]));
  MOAI22D0BWP7T B_REGISTER_g422(.A1 (B_REGISTER_n_1), .A2 (sb_in[7]),
       .B1 (B_REGISTER_n_3), .B2 (adl_in[7]), .ZN (B_REGISTER_n_11));
  MOAI22D0BWP7T B_REGISTER_g423(.A1 (B_REGISTER_n_1), .A2 (sb_in[5]),
       .B1 (B_REGISTER_n_3), .B2 (adl_in[5]), .ZN (B_REGISTER_n_10));
  MOAI22D0BWP7T B_REGISTER_g424(.A1 (B_REGISTER_n_1), .A2 (sb_in[1]),
       .B1 (B_REGISTER_n_3), .B2 (adl_in[1]), .ZN (B_REGISTER_n_9));
  NR3D0BWP7T B_REGISTER_g425(.A1 (B_REGISTER_n_2), .A2
       (B_REGISTER_n_0), .A3 (B_REGISTER_n_3), .ZN (B_REGISTER_n_12));
  MOAI22D0BWP7T B_REGISTER_g426(.A1 (B_REGISTER_n_1), .A2 (sb_in[6]),
       .B1 (B_REGISTER_n_3), .B2 (adl_in[6]), .ZN (B_REGISTER_n_8));
  MOAI22D0BWP7T B_REGISTER_g427(.A1 (B_REGISTER_n_1), .A2 (sb_in[4]),
       .B1 (B_REGISTER_n_3), .B2 (adl_in[4]), .ZN (B_REGISTER_n_7));
  MOAI22D0BWP7T B_REGISTER_g428(.A1 (B_REGISTER_n_1), .A2 (sb_in[0]),
       .B1 (B_REGISTER_n_3), .B2 (adl_in[0]), .ZN (B_REGISTER_n_6));
  MOAI22D0BWP7T B_REGISTER_g429(.A1 (B_REGISTER_n_1), .A2 (sb_in[3]),
       .B1 (B_REGISTER_n_3), .B2 (adl_in[3]), .ZN (B_REGISTER_n_5));
  MOAI22D0BWP7T B_REGISTER_g430(.A1 (B_REGISTER_n_1), .A2 (sb_in[2]),
       .B1 (B_REGISTER_n_3), .B2 (adl_in[2]), .ZN (B_REGISTER_n_4));
  INR3D0BWP7T B_REGISTER_g431(.A1 (adl_add), .B1 (db_add), .B2
       (inv_db_add), .ZN (B_REGISTER_n_3));
  INVD1BWP7T B_REGISTER_g432(.I (B_REGISTER_n_0), .ZN (B_REGISTER_n_1));
  INR3D0BWP7T B_REGISTER_g433(.A1 (db_add), .B1 (inv_db_add), .B2
       (adl_add), .ZN (B_REGISTER_n_2));
  INR3D0BWP7T B_REGISTER_g434(.A1 (inv_db_add), .B1 (db_add), .B2
       (adl_add), .ZN (B_REGISTER_n_0));
  BUFTD4BWP7T HOLD_REGISTER_g17(.I (HOLD_REGISTER_n_6), .OE
       (HOLD_REGISTER_n_8), .Z (sb_out[1]));
  BUFTD4BWP7T HOLD_REGISTER_g12(.I (HOLD_REGISTER_n_2), .OE
       (HOLD_REGISTER_n_8), .Z (sb_out[6]));
  BUFTD4BWP7T HOLD_REGISTER_g11(.I (HOLD_REGISTER_n_3), .OE
       (HOLD_REGISTER_n_8), .Z (sb_out[7]));
  BUFTD4BWP7T HOLD_REGISTER_g18(.I (HOLD_REGISTER_n_5), .OE
       (HOLD_REGISTER_n_8), .Z (sb_out[0]));
  BUFTD4BWP7T HOLD_REGISTER_g15(.I (HOLD_REGISTER_n_7), .OE
       (HOLD_REGISTER_n_8), .Z (sb_out[3]));
  BUFTD4BWP7T HOLD_REGISTER_g14(.I (HOLD_REGISTER_n_0), .OE
       (HOLD_REGISTER_n_8), .Z (sb_out[4]));
  BUFTD4BWP7T HOLD_REGISTER_g13(.I (HOLD_REGISTER_n_1), .OE
       (HOLD_REGISTER_n_8), .Z (sb_out[5]));
  BUFTD4BWP7T HOLD_REGISTER_g16(.I (HOLD_REGISTER_n_4), .OE
       (HOLD_REGISTER_n_8), .Z (sb_out[2]));
  BUFTD4BWP7T HOLD_REGISTER_g7(.I (HOLD_REGISTER_reg_out[3]), .OE
       (add_adl), .Z (adl_out[3]));
  BUFTD4BWP7T HOLD_REGISTER_g4(.I (HOLD_REGISTER_reg_out[6]), .OE
       (add_adl), .Z (adl_out[6]));
  BUFTD4BWP7T HOLD_REGISTER_g6(.I (HOLD_REGISTER_reg_out[4]), .OE
       (add_adl), .Z (adl_out[4]));
  BUFTD4BWP7T HOLD_REGISTER_g3(.I (HOLD_REGISTER_reg_out[7]), .OE
       (add_adl), .Z (adl_out[7]));
  BUFTD4BWP7T HOLD_REGISTER_g10(.I (HOLD_REGISTER_reg_out[0]), .OE
       (add_adl), .Z (adl_out[0]));
  BUFTD4BWP7T HOLD_REGISTER_g8(.I (HOLD_REGISTER_reg_out[2]), .OE
       (add_adl), .Z (adl_out[2]));
  BUFTD4BWP7T HOLD_REGISTER_g5(.I (HOLD_REGISTER_reg_out[5]), .OE
       (add_adl), .Z (adl_out[5]));
  BUFTD4BWP7T HOLD_REGISTER_g9(.I (HOLD_REGISTER_reg_out[1]), .OE
       (add_adl), .Z (adl_out[1]));
  AN2D1BWP7T HOLD_REGISTER_g133(.A1 (HOLD_REGISTER_reg_out[3]), .A2
       (add_sb6), .Z (HOLD_REGISTER_n_7));
  AN2D1BWP7T HOLD_REGISTER_g134(.A1 (HOLD_REGISTER_reg_out[1]), .A2
       (add_sb6), .Z (HOLD_REGISTER_n_6));
  AN2D1BWP7T HOLD_REGISTER_g135(.A1 (HOLD_REGISTER_reg_out[0]), .A2
       (add_sb6), .Z (HOLD_REGISTER_n_5));
  AN2D1BWP7T HOLD_REGISTER_g136(.A1 (HOLD_REGISTER_reg_out[2]), .A2
       (add_sb6), .Z (HOLD_REGISTER_n_4));
  CKAN2D1BWP7T HOLD_REGISTER_g137(.A1 (HOLD_REGISTER_reg_out[7]), .A2
       (add_sb7), .Z (HOLD_REGISTER_n_3));
  AN2D1BWP7T HOLD_REGISTER_g138(.A1 (HOLD_REGISTER_reg_out[6]), .A2
       (add_sb6), .Z (HOLD_REGISTER_n_2));
  AN2D1BWP7T HOLD_REGISTER_g139(.A1 (HOLD_REGISTER_reg_out[5]), .A2
       (add_sb6), .Z (HOLD_REGISTER_n_1));
  AN2D1BWP7T HOLD_REGISTER_g140(.A1 (HOLD_REGISTER_reg_out[4]), .A2
       (add_sb6), .Z (HOLD_REGISTER_n_0));
  OR2D1BWP7T HOLD_REGISTER_g141(.A1 (add_sb6), .A2 (add_sb7), .Z
       (HOLD_REGISTER_n_8));
  EDFKCNQD1BWP7T \B_REGISTER_l1_q_reg[3] (.CP (clk), .CN
       (B_REGISTER_l1_n_0), .D (B_REGISTER_data_in[3]), .E
       (B_REGISTER_l1_n_0), .Q (b[3]));
  EDFKCNQD1BWP7T \B_REGISTER_l1_q_reg[2] (.CP (clk), .CN
       (B_REGISTER_l1_n_0), .D (B_REGISTER_data_in[2]), .E
       (B_REGISTER_l1_n_0), .Q (b[2]));
  EDFKCNQD1BWP7T \B_REGISTER_l1_q_reg[0] (.CP (clk), .CN
       (B_REGISTER_l1_n_0), .D (B_REGISTER_data_in[0]), .E
       (B_REGISTER_l1_n_0), .Q (b[0]));
  EDFKCNQD1BWP7T \B_REGISTER_l1_q_reg[4] (.CP (clk), .CN
       (B_REGISTER_l1_n_0), .D (B_REGISTER_data_in[4]), .E
       (B_REGISTER_l1_n_0), .Q (b[4]));
  EDFKCNQD1BWP7T \B_REGISTER_l1_q_reg[6] (.CP (clk), .CN
       (B_REGISTER_l1_n_0), .D (B_REGISTER_data_in[6]), .E
       (B_REGISTER_l1_n_0), .Q (b[6]));
  EDFKCNQD1BWP7T \B_REGISTER_l1_q_reg[5] (.CP (clk), .CN
       (B_REGISTER_l1_n_0), .D (B_REGISTER_data_in[5]), .E
       (B_REGISTER_l1_n_0), .Q (b[5]));
  EDFKCNQD1BWP7T \B_REGISTER_l1_q_reg[1] (.CP (clk), .CN
       (B_REGISTER_l1_n_0), .D (B_REGISTER_data_in[1]), .E
       (B_REGISTER_l1_n_0), .Q (b[1]));
  EDFKCNQD1BWP7T \B_REGISTER_l1_q_reg[7] (.CP (clk), .CN
       (B_REGISTER_l1_n_0), .D (B_REGISTER_data_in[7]), .E
       (B_REGISTER_l1_n_0), .Q (b[7]));
  INVD1BWP7T B_REGISTER_l1_g39(.I (reset), .ZN (B_REGISTER_l1_n_0));
  AO22D0BWP7T A_REGSISTER_g222(.A1 (a[5]), .A2 (A_REGSISTER_n_2), .B1
       (sb_in[5]), .B2 (A_REGSISTER_n_1), .Z (A_REGSISTER_n_8));
  AO22D0BWP7T A_REGSISTER_g223(.A1 (a[6]), .A2 (A_REGSISTER_n_2), .B1
       (sb_in[6]), .B2 (A_REGSISTER_n_1), .Z (A_REGSISTER_n_9));
  AO22D0BWP7T A_REGSISTER_g224(.A1 (a[7]), .A2 (A_REGSISTER_n_2), .B1
       (sb_in[7]), .B2 (A_REGSISTER_n_1), .Z (A_REGSISTER_n_10));
  AO22D0BWP7T A_REGSISTER_g225(.A1 (a[1]), .A2 (A_REGSISTER_n_2), .B1
       (sb_in[1]), .B2 (A_REGSISTER_n_1), .Z (A_REGSISTER_n_4));
  AO22D0BWP7T A_REGSISTER_g226(.A1 (a[3]), .A2 (A_REGSISTER_n_2), .B1
       (sb_in[3]), .B2 (A_REGSISTER_n_1), .Z (A_REGSISTER_n_6));
  AO22D0BWP7T A_REGSISTER_g227(.A1 (a[0]), .A2 (A_REGSISTER_n_2), .B1
       (sb_in[0]), .B2 (A_REGSISTER_n_1), .Z (A_REGSISTER_n_3));
  AO22D0BWP7T A_REGSISTER_g228(.A1 (a[4]), .A2 (A_REGSISTER_n_2), .B1
       (sb_in[4]), .B2 (A_REGSISTER_n_1), .Z (A_REGSISTER_n_7));
  AO22D0BWP7T A_REGSISTER_g229(.A1 (a[2]), .A2 (A_REGSISTER_n_2), .B1
       (sb_in[2]), .B2 (A_REGSISTER_n_1), .Z (A_REGSISTER_n_5));
  INVD1BWP7T A_REGSISTER_g230(.I (A_REGSISTER_n_2), .ZN
       (A_REGSISTER_n_11));
  AOI21D0BWP7T A_REGSISTER_g231(.A1 (A_REGSISTER_n_0), .A2 (o_add), .B
       (A_REGSISTER_n_1), .ZN (A_REGSISTER_n_2));
  NR2D1BWP7T A_REGSISTER_g232(.A1 (A_REGSISTER_n_0), .A2 (o_add), .ZN
       (A_REGSISTER_n_1));
  CKND1BWP7T A_REGSISTER_g233(.I (sb_add), .ZN (A_REGSISTER_n_0));
  EDFKCNQD1BWP7T \A_REGSISTER_L1_q_reg[3] (.CP (clk), .CN
       (A_REGSISTER_L1_n_0), .D (A_REGSISTER_n_6), .E
       (A_REGSISTER_L1_n_1), .Q (a[3]));
  EDFKCNQD1BWP7T \A_REGSISTER_L1_q_reg[2] (.CP (clk), .CN
       (A_REGSISTER_L1_n_0), .D (A_REGSISTER_n_5), .E
       (A_REGSISTER_L1_n_1), .Q (a[2]));
  EDFKCNQD1BWP7T \A_REGSISTER_L1_q_reg[0] (.CP (clk), .CN
       (A_REGSISTER_L1_n_0), .D (A_REGSISTER_n_3), .E
       (A_REGSISTER_L1_n_1), .Q (a[0]));
  EDFKCNQD1BWP7T \A_REGSISTER_L1_q_reg[4] (.CP (clk), .CN
       (A_REGSISTER_L1_n_0), .D (A_REGSISTER_n_7), .E
       (A_REGSISTER_L1_n_1), .Q (a[4]));
  EDFKCNQD1BWP7T \A_REGSISTER_L1_q_reg[6] (.CP (clk), .CN
       (A_REGSISTER_L1_n_0), .D (A_REGSISTER_n_9), .E
       (A_REGSISTER_L1_n_1), .Q (a[6]));
  EDFKCNQD1BWP7T \A_REGSISTER_L1_q_reg[5] (.CP (clk), .CN
       (A_REGSISTER_L1_n_0), .D (A_REGSISTER_n_8), .E
       (A_REGSISTER_L1_n_1), .Q (a[5]));
  EDFKCNQD1BWP7T \A_REGSISTER_L1_q_reg[1] (.CP (clk), .CN
       (A_REGSISTER_L1_n_0), .D (A_REGSISTER_n_4), .E
       (A_REGSISTER_L1_n_1), .Q (a[1]));
  EDFKCNQD1BWP7T \A_REGSISTER_L1_q_reg[7] (.CP (clk), .CN
       (A_REGSISTER_L1_n_0), .D (A_REGSISTER_n_10), .E
       (A_REGSISTER_L1_n_1), .Q (a[7]));
  AN2D1BWP7T A_REGSISTER_L1_g51(.A1 (A_REGSISTER_n_11), .A2
       (A_REGSISTER_L1_n_0), .Z (A_REGSISTER_L1_n_1));
  INVD1BWP7T A_REGSISTER_L1_g52(.I (reset), .ZN (A_REGSISTER_L1_n_0));
  AO221D0BWP7T alu_logicmap_g1748(.A1 (alu_logicmap_n_28), .A2
       (\alu_logicmap_o_pass[7]_180 ), .B1 (alu_logicmap_n_33), .B2
       (logic_0_1_net), .C (alu_logicmap_n_65), .Z (output_alu[7]));
  OAI221D0BWP7T alu_logicmap_g1749(.A1 (alu_logicmap_n_63), .A2
       (alu_logicmap_n_35), .B1 (alu_logicmap_n_36), .B2
       (alu_logicmap_n_5), .C (alu_logicmap_n_46), .ZN
       (alu_logicmap_n_65));
  AO221D0BWP7T alu_logicmap_g1750(.A1 (alu_logicmap_n_28), .A2
       (\alu_logicmap_o_pass[6]_181 ), .B1 (alu_logicmap_n_33), .B2
       (a[7]), .C (alu_logicmap_n_64), .Z (output_alu[6]));
  OAI221D0BWP7T alu_logicmap_g1751(.A1 (alu_logicmap_n_59), .A2
       (alu_logicmap_n_35), .B1 (alu_logicmap_n_36), .B2
       (alu_logicmap_n_8), .C (alu_logicmap_n_38), .ZN
       (alu_logicmap_n_64));
  ND2D4BWP7T alu_logicmap_g1752(.A1 (alu_logicmap_n_61), .A2
       (alu_logicmap_n_5), .ZN (acr));
  AO221D0BWP7T alu_logicmap_g1753(.A1 (alu_logicmap_n_28), .A2
       (\alu_logicmap_o_pass[5]_182 ), .B1 (alu_logicmap_n_33), .B2
       (a[6]), .C (alu_logicmap_n_62), .Z (output_alu[5]));
  MAOI22D0BWP7T alu_logicmap_g1754(.A1 (alu_logicmap_n_60), .A2
       (alu_logicmap_n_17), .B1 (alu_logicmap_n_60), .B2
       (alu_logicmap_n_17), .ZN (alu_logicmap_n_63));
  OAI221D0BWP7T alu_logicmap_g1755(.A1 (alu_logicmap_n_56), .A2
       (alu_logicmap_n_35), .B1 (alu_logicmap_n_36), .B2
       (alu_logicmap_n_13), .C (alu_logicmap_n_43), .ZN
       (alu_logicmap_n_62));
  OAI21D0BWP7T alu_logicmap_g1756(.A1 (a[7]), .A2 (b[7]), .B
       (alu_logicmap_n_60), .ZN (alu_logicmap_n_61));
  MAOI222D1BWP7T alu_logicmap_g1757(.A (alu_logicmap_n_57), .B (a[6]),
       .C (b[6]), .ZN (alu_logicmap_n_60));
  AO221D0BWP7T alu_logicmap_g1758(.A1 (alu_logicmap_n_28), .A2
       (\alu_logicmap_o_pass[4]_183 ), .B1 (alu_logicmap_n_33), .B2
       (a[5]), .C (alu_logicmap_n_58), .Z (output_alu[4]));
  MAOI22D0BWP7T alu_logicmap_g1759(.A1 (alu_logicmap_n_57), .A2
       (alu_logicmap_n_15), .B1 (alu_logicmap_n_57), .B2
       (alu_logicmap_n_15), .ZN (alu_logicmap_n_59));
  OAI221D0BWP7T alu_logicmap_g1760(.A1 (alu_logicmap_n_51), .A2
       (alu_logicmap_n_35), .B1 (alu_logicmap_n_36), .B2
       (alu_logicmap_n_7), .C (alu_logicmap_n_44), .ZN
       (alu_logicmap_n_58));
  OAI21D0BWP7T alu_logicmap_g1761(.A1 (alu_logicmap_n_54), .A2
       (alu_logicmap_n_9), .B (alu_logicmap_n_13), .ZN
       (alu_logicmap_n_57));
  AO221D0BWP7T alu_logicmap_g1762(.A1 (alu_logicmap_n_28), .A2
       (\alu_logicmap_o_pass[3]_184 ), .B1 (alu_logicmap_n_33), .B2
       (a[4]), .C (alu_logicmap_n_55), .Z (output_alu[3]));
  MAOI22D0BWP7T alu_logicmap_g1763(.A1 (alu_logicmap_n_54), .A2
       (alu_logicmap_n_21), .B1 (alu_logicmap_n_54), .B2
       (alu_logicmap_n_21), .ZN (alu_logicmap_n_56));
  AO221D0BWP7T alu_logicmap_g1764(.A1 (alu_logicmap_o_or[0]), .A2
       (alu_logicmap_n_32), .B1 (alu_logicmap_n_33), .B2 (a[1]), .C
       (alu_logicmap_n_53), .Z (output_alu[0]));
  OAI221D0BWP7T alu_logicmap_g1765(.A1 (alu_logicmap_n_41), .A2
       (alu_logicmap_n_35), .B1 (alu_logicmap_n_36), .B2
       (alu_logicmap_n_6), .C (alu_logicmap_n_40), .ZN
       (alu_logicmap_n_55));
  AO221D0BWP7T alu_logicmap_g1766(.A1 (alu_logicmap_n_28), .A2
       (\alu_logicmap_o_pass[2]_185 ), .B1 (alu_logicmap_n_33), .B2
       (a[3]), .C (alu_logicmap_n_49), .Z (output_alu[2]));
  MAOI222D1BWP7T alu_logicmap_g1767(.A (alu_logicmap_n_47), .B (a[4]),
       .C (b[4]), .ZN (alu_logicmap_n_54));
  AO221D0BWP7T alu_logicmap_g1768(.A1 (alu_logicmap_n_28), .A2
       (\alu_logicmap_o_pass[1]_186 ), .B1 (alu_logicmap_n_33), .B2
       (a[2]), .C (alu_logicmap_n_48), .Z (output_alu[1]));
  OAI211D0BWP7T alu_logicmap_g1769(.A1 (alu_logicmap_n_36), .A2
       (alu_logicmap_n_2), .B (alu_logicmap_n_45), .C
       (alu_logicmap_n_34), .ZN (alu_logicmap_n_53));
  MAOI22D0BWP7T alu_logicmap_g1770(.A1 (alu_logicmap_n_47), .A2
       (alu_logicmap_n_19), .B1 (alu_logicmap_n_47), .B2
       (alu_logicmap_n_19), .ZN (alu_logicmap_n_51));
  OAI221D0BWP7T alu_logicmap_g1771(.A1 (alu_logicmap_n_29), .A2
       (alu_logicmap_n_35), .B1 (alu_logicmap_n_36), .B2
       (alu_logicmap_n_0), .C (alu_logicmap_n_42), .ZN
       (alu_logicmap_n_49));
  OAI221D0BWP7T alu_logicmap_g1772(.A1 (alu_logicmap_n_26), .A2
       (alu_logicmap_n_35), .B1 (alu_logicmap_n_36), .B2
       (alu_logicmap_n_4), .C (alu_logicmap_n_39), .ZN
       (alu_logicmap_n_48));
  AOI22D0BWP7T alu_logicmap_g1773(.A1 (alu_logicmap_n_17), .A2
       (alu_logicmap_n_30), .B1 (alu_logicmap_o_or[7]), .B2
       (alu_logicmap_n_32), .ZN (alu_logicmap_n_46));
  IOA21D0BWP7T alu_logicmap_g1774(.A1 (alu_logicmap_n_31), .A2
       (alu_logicmap_n_35), .B (alu_logicmap_n_14), .ZN
       (alu_logicmap_n_45));
  MAOI22D0BWP7T alu_logicmap_g1775(.A1 (alu_logicmap_o_or[4]), .A2
       (alu_logicmap_n_32), .B1 (alu_logicmap_n_19), .B2
       (alu_logicmap_n_31), .ZN (alu_logicmap_n_44));
  AOI22D0BWP7T alu_logicmap_g1776(.A1 (alu_logicmap_n_21), .A2
       (alu_logicmap_n_30), .B1 (alu_logicmap_o_or[5]), .B2
       (alu_logicmap_n_32), .ZN (alu_logicmap_n_43));
  OAI21D0BWP7T alu_logicmap_g1777(.A1 (alu_logicmap_n_37), .A2
       (alu_logicmap_n_11), .B (alu_logicmap_n_6), .ZN
       (alu_logicmap_n_47));
  AOI22D0BWP7T alu_logicmap_g1778(.A1 (alu_logicmap_n_18), .A2
       (alu_logicmap_n_30), .B1 (alu_logicmap_o_or[2]), .B2
       (alu_logicmap_n_32), .ZN (alu_logicmap_n_42));
  MAOI22D0BWP7T alu_logicmap_g1779(.A1 (alu_logicmap_n_37), .A2
       (alu_logicmap_n_20), .B1 (alu_logicmap_n_37), .B2
       (alu_logicmap_n_20), .ZN (alu_logicmap_n_41));
  AOI22D0BWP7T alu_logicmap_g1780(.A1 (alu_logicmap_n_20), .A2
       (alu_logicmap_n_30), .B1 (alu_logicmap_o_or[3]), .B2
       (alu_logicmap_n_32), .ZN (alu_logicmap_n_40));
  AOI22D0BWP7T alu_logicmap_g1781(.A1 (alu_logicmap_n_16), .A2
       (alu_logicmap_n_30), .B1 (alu_logicmap_o_or[1]), .B2
       (alu_logicmap_n_32), .ZN (alu_logicmap_n_39));
  MAOI22D0BWP7T alu_logicmap_g1782(.A1 (alu_logicmap_o_or[6]), .A2
       (alu_logicmap_n_32), .B1 (alu_logicmap_n_15), .B2
       (alu_logicmap_n_31), .ZN (alu_logicmap_n_38));
  ND2D0BWP7T alu_logicmap_g1783(.A1 (alu_logicmap_n_28), .A2
       (\alu_logicmap_o_pass[0]_187 ), .ZN (alu_logicmap_n_34));
  MAOI222D1BWP7T alu_logicmap_g1784(.A (alu_logicmap_n_27), .B (a[2]),
       .C (b[2]), .ZN (alu_logicmap_n_37));
  IIND4D0BWP7T alu_logicmap_g1785(.A1 (alu_logicmap_n_25), .A2
       (control[2]), .B1 (alu_logicmap_n_12), .B2 (control[3]), .ZN
       (alu_logicmap_n_36));
  IND4D0BWP7T alu_logicmap_g1786(.A1 (control[3]), .B1 (control[2]),
       .B2 (alu_logicmap_n_3), .B3 (alu_logicmap_n_24), .ZN
       (alu_logicmap_n_35));
  INVD1BWP7T alu_logicmap_g1787(.I (alu_logicmap_n_31), .ZN
       (alu_logicmap_n_30));
  XNR2D1BWP7T alu_logicmap_g1788(.A1 (alu_logicmap_n_27), .A2
       (alu_logicmap_n_18), .ZN (alu_logicmap_n_29));
  AN4D1BWP7T alu_logicmap_g1789(.A1 (alu_logicmap_n_24), .A2
       (alu_logicmap_n_1), .A3 (control[6]), .A4 (control[7]), .Z
       (alu_logicmap_n_33));
  IINR4D0BWP7T alu_logicmap_g1790(.A1 (alu_logicmap_n_1), .A2
       (control[5]), .B1 (alu_logicmap_n_25), .B2 (control[4]), .ZN
       (alu_logicmap_n_32));
  IIND4D0BWP7T alu_logicmap_g1791(.A1 (alu_logicmap_n_25), .A2
       (control[5]), .B1 (alu_logicmap_n_1), .B2 (control[4]), .ZN
       (alu_logicmap_n_31));
  IINR4D0BWP7T alu_logicmap_g1792(.A1 (alu_logicmap_n_1), .A2
       (alu_logicmap_n_3), .B1 (alu_logicmap_n_23), .B2 (control[1]),
       .ZN (alu_logicmap_n_28));
  OAI21D0BWP7T alu_logicmap_g1793(.A1 (alu_logicmap_n_10), .A2
       (alu_logicmap_n_2), .B (alu_logicmap_n_4), .ZN
       (alu_logicmap_n_27));
  MAOI22D0BWP7T alu_logicmap_g1794(.A1 (alu_logicmap_n_16), .A2
       (alu_logicmap_n_2), .B1 (alu_logicmap_n_16), .B2
       (alu_logicmap_n_2), .ZN (alu_logicmap_n_26));
  IND3D0BWP7T alu_logicmap_g1795(.A1 (control[1]), .B1
       (alu_logicmap_n_3), .B2 (alu_logicmap_n_22), .ZN
       (alu_logicmap_n_25));
  AN3D0BWP7T alu_logicmap_g1796(.A1 (alu_logicmap_n_12), .A2
       (alu_logicmap_n_22), .A3 (control[1]), .Z (alu_logicmap_n_24));
  IND4D0BWP7T alu_logicmap_g1797(.A1 (control[0]), .B1 (control[8]),
       .B2 (control[9]), .B3 (alu_logicmap_n_12), .ZN
       (alu_logicmap_n_23));
  NR3D0BWP7T alu_logicmap_g1798(.A1 (control[0]), .A2 (control[9]), .A3
       (control[8]), .ZN (alu_logicmap_n_22));
  CKXOR2D0BWP7T alu_logicmap_g1799(.A1 (b[5]), .A2 (a[5]), .Z
       (alu_logicmap_n_21));
  CKXOR2D0BWP7T alu_logicmap_g1800(.A1 (b[3]), .A2 (a[3]), .Z
       (alu_logicmap_n_20));
  XNR2D1BWP7T alu_logicmap_g1801(.A1 (a[4]), .A2 (b[4]), .ZN
       (alu_logicmap_n_19));
  CKXOR2D0BWP7T alu_logicmap_g1802(.A1 (b[0]), .A2 (a[0]), .Z
       (alu_logicmap_n_14));
  CKXOR2D0BWP7T alu_logicmap_g1803(.A1 (b[2]), .A2 (a[2]), .Z
       (alu_logicmap_n_18));
  CKXOR2D0BWP7T alu_logicmap_g1804(.A1 (b[7]), .A2 (a[7]), .Z
       (alu_logicmap_n_17));
  CKXOR2D0BWP7T alu_logicmap_g1805(.A1 (b[1]), .A2 (a[1]), .Z
       (alu_logicmap_n_16));
  XNR2D1BWP7T alu_logicmap_g1806(.A1 (a[6]), .A2 (b[6]), .ZN
       (alu_logicmap_n_15));
  NR2D0BWP7T alu_logicmap_g1807(.A1 (a[3]), .A2 (b[3]), .ZN
       (alu_logicmap_n_11));
  NR2D0BWP7T alu_logicmap_g1808(.A1 (a[1]), .A2 (b[1]), .ZN
       (alu_logicmap_n_10));
  NR2D1BWP7T alu_logicmap_g1809(.A1 (b[5]), .A2 (a[5]), .ZN
       (alu_logicmap_n_9));
  ND2D0BWP7T alu_logicmap_g1810(.A1 (b[6]), .A2 (a[6]), .ZN
       (alu_logicmap_n_8));
  ND2D0BWP7T alu_logicmap_g1811(.A1 (b[4]), .A2 (a[4]), .ZN
       (alu_logicmap_n_7));
  CKND2D1BWP7T alu_logicmap_g1812(.A1 (a[5]), .A2 (b[5]), .ZN
       (alu_logicmap_n_13));
  NR2D0BWP7T alu_logicmap_g1813(.A1 (control[4]), .A2 (control[5]), .ZN
       (alu_logicmap_n_12));
  ND2D0BWP7T alu_logicmap_g1814(.A1 (b[2]), .A2 (a[2]), .ZN
       (alu_logicmap_n_0));
  CKND2D1BWP7T alu_logicmap_g1815(.A1 (a[3]), .A2 (b[3]), .ZN
       (alu_logicmap_n_6));
  ND2D1BWP7T alu_logicmap_g1816(.A1 (b[7]), .A2 (a[7]), .ZN
       (alu_logicmap_n_5));
  ND2D0BWP7T alu_logicmap_g1817(.A1 (b[1]), .A2 (a[1]), .ZN
       (alu_logicmap_n_4));
  NR2D0BWP7T alu_logicmap_g1818(.A1 (control[6]), .A2 (control[7]), .ZN
       (alu_logicmap_n_3));
  ND2D1BWP7T alu_logicmap_g1819(.A1 (b[0]), .A2 (a[0]), .ZN
       (alu_logicmap_n_2));
  NR2D0BWP7T alu_logicmap_g1820(.A1 (control[2]), .A2 (control[3]), .ZN
       (alu_logicmap_n_1));
  OR2D0BWP7T alu_logicmap_ORR_g9(.A1 (a[2]), .A2 (b[2]), .Z
       (alu_logicmap_o_or[2]));
  OR2D0BWP7T alu_logicmap_ORR_g10(.A1 (a[6]), .A2 (b[6]), .Z
       (alu_logicmap_o_or[6]));
  OR2D0BWP7T alu_logicmap_ORR_g11(.A1 (a[7]), .A2 (b[7]), .Z
       (alu_logicmap_o_or[7]));
  OR2D0BWP7T alu_logicmap_ORR_g12(.A1 (a[1]), .A2 (b[1]), .Z
       (alu_logicmap_o_or[1]));
  OR2D0BWP7T alu_logicmap_ORR_g13(.A1 (a[5]), .A2 (b[5]), .Z
       (alu_logicmap_o_or[5]));
  OR2D0BWP7T alu_logicmap_ORR_g14(.A1 (b[0]), .A2 (a[0]), .Z
       (alu_logicmap_o_or[0]));
  OR2D0BWP7T alu_logicmap_ORR_g15(.A1 (a[4]), .A2 (b[4]), .Z
       (alu_logicmap_o_or[4]));
  OR2D0BWP7T alu_logicmap_ORR_g16(.A1 (a[3]), .A2 (b[3]), .Z
       (alu_logicmap_o_or[3]));
  EDFKCNQD1BWP7T \HOLD_REGISTER_l1_q_reg[3] (.CP (clk_2), .CN
       (HOLD_REGISTER_l1_n_0), .D (output_alu[3]), .E
       (HOLD_REGISTER_l1_n_0), .Q (HOLD_REGISTER_reg_out[3]));
  EDFKCNQD1BWP7T \HOLD_REGISTER_l1_q_reg[2] (.CP (clk_2), .CN
       (HOLD_REGISTER_l1_n_0), .D (output_alu[2]), .E
       (HOLD_REGISTER_l1_n_0), .Q (HOLD_REGISTER_reg_out[2]));
  EDFKCNQD1BWP7T \HOLD_REGISTER_l1_q_reg[0] (.CP (clk_2), .CN
       (HOLD_REGISTER_l1_n_0), .D (output_alu[0]), .E
       (HOLD_REGISTER_l1_n_0), .Q (HOLD_REGISTER_reg_out[0]));
  EDFKCNQD1BWP7T \HOLD_REGISTER_l1_q_reg[4] (.CP (clk_2), .CN
       (HOLD_REGISTER_l1_n_0), .D (output_alu[4]), .E
       (HOLD_REGISTER_l1_n_0), .Q (HOLD_REGISTER_reg_out[4]));
  EDFKCNQD1BWP7T \HOLD_REGISTER_l1_q_reg[6] (.CP (clk_2), .CN
       (HOLD_REGISTER_l1_n_0), .D (output_alu[6]), .E
       (HOLD_REGISTER_l1_n_0), .Q (HOLD_REGISTER_reg_out[6]));
  EDFKCNQD1BWP7T \HOLD_REGISTER_l1_q_reg[5] (.CP (clk_2), .CN
       (HOLD_REGISTER_l1_n_0), .D (output_alu[5]), .E
       (HOLD_REGISTER_l1_n_0), .Q (HOLD_REGISTER_reg_out[5]));
  EDFKCNQD1BWP7T \HOLD_REGISTER_l1_q_reg[1] (.CP (clk_2), .CN
       (HOLD_REGISTER_l1_n_0), .D (output_alu[1]), .E
       (HOLD_REGISTER_l1_n_0), .Q (HOLD_REGISTER_reg_out[1]));
  EDFKCNQD1BWP7T \HOLD_REGISTER_l1_q_reg[7] (.CP (clk_2), .CN
       (HOLD_REGISTER_l1_n_0), .D (output_alu[7]), .E
       (HOLD_REGISTER_l1_n_0), .Q (HOLD_REGISTER_reg_out[7]));
  INVD1BWP7T HOLD_REGISTER_l1_g39(.I (reset), .ZN
       (HOLD_REGISTER_l1_n_0));
  TIELBWP7T tie_0_cell(.ZN (logic_0_1_net));
endmodule

