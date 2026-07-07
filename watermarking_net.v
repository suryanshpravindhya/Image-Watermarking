module watermarking_system(clk, rst, pixel_in, valid_in,
     watermarked_pixel_out, valid_out);
  input clk, rst, valid_in;
  input [7:0] pixel_in;
  output [7:0] watermarked_pixel_out;
  output valid_out;
  wire clk, rst, valid_in;
  wire [7:0] pixel_in;
  wire [7:0] watermarked_pixel_out;
  wire valid_out;
  wire [7:0] buffer_x2;
  wire [7:0] prev_pixel;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, pixel_pair_toggle;
  DFFQX1 \watermarked_pixel_out_reg[7] (.CK (clk), .D (n_103), .Q
       (watermarked_pixel_out[7]));
  DFFQX1 \buffer_x2_reg[7] (.CK (clk), .D (n_104), .Q (buffer_x2[7]));
  DFFQX1 \watermarked_pixel_out_reg[6] (.CK (clk), .D (n_98), .Q
       (watermarked_pixel_out[6]));
  DFFQX1 \watermarked_pixel_out_reg[5] (.CK (clk), .D (n_101), .Q
       (watermarked_pixel_out[5]));
  DFFQX1 \buffer_x2_reg[6] (.CK (clk), .D (n_97), .Q (buffer_x2[6]));
  OAI21XL g2337__2398(.A0 (n_96), .A1 (n_102), .B0 (n_47), .Y (n_104));
  OAI21XL g2338__5107(.A0 (n_102), .A1 (n_93), .B0 (n_79), .Y (n_103));
  DFFQX1 \watermarked_pixel_out_reg[0] (.CK (clk), .D (n_100), .Q
       (watermarked_pixel_out[0]));
  DFFQX1 \watermarked_pixel_out_reg[1] (.CK (clk), .D (n_99), .Q
       (watermarked_pixel_out[1]));
  DFFQX1 \watermarked_pixel_out_reg[4] (.CK (clk), .D (n_92), .Q
       (watermarked_pixel_out[4]));
  DFFQX1 \watermarked_pixel_out_reg[3] (.CK (clk), .D (n_95), .Q
       (watermarked_pixel_out[3]));
  DFFQX1 \watermarked_pixel_out_reg[2] (.CK (clk), .D (n_91), .Q
       (watermarked_pixel_out[2]));
  OAI21XL g2352__6260(.A0 (n_102), .A1 (n_54), .B0 (n_82), .Y (n_101));
  CLKINVX1 g2373(.A (n_94), .Y (n_100));
  DFFQX1 \buffer_x2_reg[5] (.CK (clk), .D (n_85), .Q (buffer_x2[5]));
  OAI21XL g2375__4319(.A0 (n_102), .A1 (prev_pixel[1]), .B0 (n_81), .Y
       (n_99));
  NAND2XL g2341__8428(.A (n_87), .B (n_80), .Y (n_98));
  OAI21XL g2342__5526(.A0 (n_78), .A1 (n_102), .B0 (n_41), .Y (n_97));
  AOI21XL g2343__6783(.A0 (pixel_in[7]), .A1 (n_76), .B0 (n_77), .Y
       (n_96));
  CLKINVX1 g2370(.A (n_90), .Y (n_95));
  AOI222XL g2374__3680(.A0 (n_88), .A1 (buffer_x2[0]), .B0
       (prev_pixel[0]), .B1 (n_89), .C0 (watermarked_pixel_out[0]), .C1
       (n_69), .Y (n_94));
  AOI21XL g2344__1617(.A0 (prev_pixel[7]), .A1 (n_86), .B0 (n_75), .Y
       (n_93));
  CLKINVX1 g2358(.A (n_84), .Y (n_92));
  CLKINVX1 g2384(.A (n_83), .Y (n_91));
  AOI222XL g2371__2802(.A0 (n_29), .A1 (n_89), .B0 (buffer_x2[3]), .B1
       (n_88), .C0 (n_62), .C1 (watermarked_pixel_out[3]), .Y (n_90));
  OAI211XL g2347__1705(.A0 (n_52), .A1 (prev_pixel[6]), .B0 (n_86), .C0
       (n_89), .Y (n_87));
  AO22XL g2350__5122(.A0 (n_89), .A1 (n_53), .B0 (buffer_x2[5]), .B1
       (n_73), .Y (n_85));
  AOI222XL g2359__8246(.A0 (n_40), .A1 (n_89), .B0 (buffer_x2[4]), .B1
       (n_88), .C0 (n_61), .C1 (watermarked_pixel_out[4]), .Y (n_84));
  DFFQX1 \buffer_x2_reg[4] (.CK (clk), .D (n_74), .Q (buffer_x2[4]));
  AOI222XL g2387__7098(.A0 (n_2), .A1 (n_89), .B0 (buffer_x2[2]), .B1
       (n_88), .C0 (n_65), .C1 (watermarked_pixel_out[2]), .Y (n_83));
  AOI22X1 g2386__6131(.A0 (watermarked_pixel_out[5]), .A1 (n_72), .B0
       (buffer_x2[5]), .B1 (n_88), .Y (n_82));
  AOI22X1 g2385__1881(.A0 (watermarked_pixel_out[1]), .A1 (n_59), .B0
       (buffer_x2[1]), .B1 (n_88), .Y (n_81));
  AOI22X1 g2388__5115(.A0 (watermarked_pixel_out[6]), .A1 (n_71), .B0
       (buffer_x2[6]), .B1 (n_88), .Y (n_80));
  AOI22X1 g2389__7482(.A0 (watermarked_pixel_out[7]), .A1 (n_58), .B0
       (buffer_x2[7]), .B1 (n_88), .Y (n_79));
  AOI21XL g2351__4733(.A0 (pixel_in[6]), .A1 (n_55), .B0 (n_56), .Y
       (n_78));
  DFFQX1 \buffer_x2_reg[1] (.CK (clk), .D (n_66), .Q (buffer_x2[1]));
  NOR2XL g2345__6161(.A (pixel_in[7]), .B (n_76), .Y (n_77));
  NOR2XL g2346__9315(.A (prev_pixel[7]), .B (n_86), .Y (n_75));
  DFFQX1 valid_out_reg(.CK (clk), .D (n_51), .Q (valid_out));
  DFFQX1 \buffer_x2_reg[3] (.CK (clk), .D (n_48), .Q (buffer_x2[3]));
  AO22XL g2360__9945(.A0 (n_89), .A1 (n_31), .B0 (buffer_x2[4]), .B1
       (n_73), .Y (n_74));
  DFFQX1 \buffer_x2_reg[0] (.CK (clk), .D (n_50), .Q (buffer_x2[0]));
  DFFQX1 \buffer_x2_reg[2] (.CK (clk), .D (n_49), .Q (buffer_x2[2]));
  OAI31X1 g2405__2883(.A0 (buffer_x2[2]), .A1 (n_64), .A2 (n_63), .B0
       (n_70), .Y (n_72));
  OAI31X1 g2396__2346(.A0 (buffer_x2[0]), .A1 (n_68), .A2 (n_67), .B0
       (n_70), .Y (n_71));
  OAI31XL g2395__1666(.A0 (n_68), .A1 (buffer_x2[6]), .A2 (n_67), .B0
       (n_70), .Y (n_69));
  DFFQX1 \prev_pixel_reg[0] (.CK (clk), .D (n_32), .Q (prev_pixel[0]));
  DFFQX1 \prev_pixel_reg[6] (.CK (clk), .D (n_34), .Q (prev_pixel[6]));
  DFFQX1 \prev_pixel_reg[2] (.CK (clk), .D (n_36), .Q (prev_pixel[2]));
  DFFQX1 \prev_pixel_reg[7] (.CK (clk), .D (n_37), .Q (prev_pixel[7]));
  DFFQX1 \prev_pixel_reg[1] (.CK (clk), .D (n_35), .Q (prev_pixel[1]));
  DFFQX1 \prev_pixel_reg[5] (.CK (clk), .D (n_39), .Q (prev_pixel[5]));
  DFFQX1 \prev_pixel_reg[4] (.CK (clk), .D (n_33), .Q (prev_pixel[4]));
  DFFQX1 \prev_pixel_reg[3] (.CK (clk), .D (n_38), .Q (prev_pixel[3]));
  OAI21XL g2411__7410(.A0 (n_102), .A1 (pixel_in[1]), .B0 (n_42), .Y
       (n_66));
  OAI31XL g2407__6417(.A0 (n_64), .A1 (buffer_x2[5]), .A2 (n_63), .B0
       (n_70), .Y (n_65));
  OAI31XL g2408__5477(.A0 (n_60), .A1 (buffer_x2[4]), .A2 (n_63), .B0
       (n_70), .Y (n_62));
  OAI31XL g2409__2398(.A0 (n_60), .A1 (buffer_x2[3]), .A2 (n_63), .B0
       (n_70), .Y (n_61));
  OAI31X1 g2410__5107(.A0 (buffer_x2[7]), .A1 (n_57), .A2 (n_67), .B0
       (n_70), .Y (n_59));
  OAI31X1 g2406__6260(.A0 (buffer_x2[1]), .A1 (n_57), .A2 (n_67), .B0
       (n_70), .Y (n_58));
  NOR2XL g2353__4319(.A (pixel_in[6]), .B (n_55), .Y (n_56));
  AOI21XL g2362__8428(.A0 (prev_pixel[5]), .A1 (n_45), .B0 (n_46), .Y
       (n_54));
  OAI21X1 g2361__5526(.A0 (pixel_in[5]), .A1 (n_43), .B0 (n_44), .Y
       (n_53));
  NAND2BX1 g2355__6783(.AN (n_55), .B (pixel_in[6]), .Y (n_76));
  NAND2XL g2356__3680(.A (prev_pixel[6]), .B (n_52), .Y (n_86));
  OAI21XL g2394__1617(.A0 (n_9), .A1 (n_22), .B0 (n_102), .Y (n_51));
  AO22XL g2414__2802(.A0 (buffer_x2[0]), .A1 (n_73), .B0 (pixel_in[0]),
       .B1 (n_89), .Y (n_50));
  AO22XL g2415__1705(.A0 (buffer_x2[2]), .A1 (n_73), .B0 (n_3), .B1
       (n_89), .Y (n_49));
  AO22XL g2379__5122(.A0 (n_89), .A1 (n_28), .B0 (buffer_x2[3]), .B1
       (n_73), .Y (n_48));
  NAND2XL g2419__8246(.A (buffer_x2[7]), .B (n_73), .Y (n_47));
  NOR2XL g2365__7098(.A (prev_pixel[5]), .B (n_45), .Y (n_46));
  NAND2XL g2363__6131(.A (pixel_in[5]), .B (n_43), .Y (n_44));
  NAND2XL g2418__1881(.A (buffer_x2[1]), .B (n_73), .Y (n_42));
  NAND2XL g2417__5115(.A (buffer_x2[6]), .B (n_73), .Y (n_41));
  OAI21XL g2377__7482(.A0 (prev_pixel[4]), .A1 (n_26), .B0 (n_27), .Y
       (n_40));
  NOR2BX1 g2366__4733(.AN (prev_pixel[5]), .B (n_45), .Y (n_52));
  NAND2BX1 g2367__6161(.AN (n_43), .B (pixel_in[5]), .Y (n_55));
  DFFQX1 pixel_pair_toggle_reg(.CK (clk), .D (n_30), .Q
       (pixel_pair_toggle));
  NOR2XL g2431__9315(.A (rst), .B (n_19), .Y (n_39));
  NOR2XL g2424__9945(.A (rst), .B (n_15), .Y (n_38));
  NOR2XL g2425__2883(.A (rst), .B (n_14), .Y (n_37));
  NOR2XL g2426__2346(.A (rst), .B (n_16), .Y (n_36));
  NOR2XL g2427__1666(.A (rst), .B (n_17), .Y (n_35));
  NOR2XL g2428__7410(.A (rst), .B (n_23), .Y (n_34));
  NOR2XL g2429__6417(.A (rst), .B (n_21), .Y (n_33));
  NOR2XL g2430__5477(.A (rst), .B (n_18), .Y (n_32));
  OAI21X1 g2378__2398(.A0 (pixel_in[4]), .A1 (n_24), .B0 (n_25), .Y
       (n_31));
  CLKINVX1 g2432(.A (n_73), .Y (n_70));
  OAI2BB1XL g2435__5107(.A0N (pixel_pair_toggle), .A1N (n_12), .B0
       (n_10), .Y (n_30));
  OAI21XL g2412__6260(.A0 (prev_pixel[3]), .A1 (n_7), .B0 (n_8), .Y
       (n_29));
  OAI21XL g2413__4319(.A0 (pixel_in[3]), .A1 (n_5), .B0 (n_6), .Y
       (n_28));
  NAND2XL g2380__8428(.A (prev_pixel[4]), .B (n_26), .Y (n_27));
  NAND2XL g2381__5526(.A (pixel_in[4]), .B (n_24), .Y (n_25));
  MXI2XL g2434__6783(.A (pixel_in[6]), .B (prev_pixel[6]), .S0 (n_20),
       .Y (n_23));
  NOR2XL g2433__3680(.A (n_13), .B (n_11), .Y (n_22));
  NAND2BX1 g2382__1617(.AN (n_24), .B (pixel_in[4]), .Y (n_43));
  NAND2BX1 g2383__2802(.AN (n_26), .B (prev_pixel[4]), .Y (n_45));
  MXI2XL g2444__1705(.A (pixel_in[4]), .B (prev_pixel[4]), .S0 (n_20),
       .Y (n_21));
  MXI2XL g2439__5122(.A (pixel_in[5]), .B (prev_pixel[5]), .S0 (n_20),
       .Y (n_19));
  MXI2XL g2440__8246(.A (pixel_in[0]), .B (prev_pixel[0]), .S0 (n_20),
       .Y (n_18));
  MXI2XL g2441__7098(.A (pixel_in[1]), .B (prev_pixel[1]), .S0 (n_20),
       .Y (n_17));
  MXI2XL g2442__6131(.A (pixel_in[2]), .B (prev_pixel[2]), .S0 (n_20),
       .Y (n_16));
  MXI2XL g2443__1881(.A (pixel_in[3]), .B (prev_pixel[3]), .S0 (n_20),
       .Y (n_15));
  MXI2XL g2445__5115(.A (pixel_in[7]), .B (prev_pixel[7]), .S0 (n_20),
       .Y (n_14));
  NAND2BX1 g2437__7482(.AN (n_13), .B (n_12), .Y (n_67));
  NAND2BX1 g2436__4733(.AN (n_11), .B (n_12), .Y (n_63));
  OAI21X1 g2438__6161(.A0 (valid_out), .A1 (n_1), .B0 (n_10), .Y
       (n_73));
  INVXL g2446(.A (n_88), .Y (n_9));
  CLKINVX1 g2450(.A (n_102), .Y (n_89));
  NAND2XL g2416__9315(.A (prev_pixel[3]), .B (n_7), .Y (n_8));
  NAND2XL g2420__9945(.A (pixel_in[3]), .B (n_5), .Y (n_6));
  NAND2BX1 g2421__2883(.AN (n_7), .B (prev_pixel[3]), .Y (n_26));
  NAND2BX1 g2422__2346(.AN (n_5), .B (pixel_in[3]), .Y (n_24));
  NAND2XL g2453__1666(.A (n_4), .B (n_0), .Y (n_10));
  OR2XL g2447__7410(.A (n_64), .B (n_60), .Y (n_13));
  OR2XL g2448__6417(.A (n_57), .B (n_68), .Y (n_11));
  NAND3X1 g2454__5477(.A (pixel_pair_toggle), .B (valid_in), .C (n_4),
       .Y (n_102));
  AND2X1 g2449__2398(.A (valid_out), .B (n_12), .Y (n_88));
  XOR2XL g2451__5107(.A (pixel_in[1]), .B (pixel_in[2]), .Y (n_3));
  XOR2XL g2452__6260(.A (prev_pixel[1]), .B (prev_pixel[2]), .Y (n_2));
  CLKINVX1 g2455(.A (n_12), .Y (n_1));
  CLKINVX1 g2460(.A (n_0), .Y (n_20));
  NOR2BX1 g2464__4319(.AN (valid_in), .B (pixel_pair_toggle), .Y (n_0));
  OR2X1 g2462__8428(.A (buffer_x2[1]), .B (buffer_x2[7]), .Y (n_68));
  OR2X1 g2458__5526(.A (buffer_x2[0]), .B (buffer_x2[6]), .Y (n_57));
  NAND2XL g2463__6783(.A (prev_pixel[1]), .B (prev_pixel[2]), .Y (n_7));
  OR2X1 g2456__3680(.A (buffer_x2[3]), .B (buffer_x2[4]), .Y (n_64));
  OR2X1 g2457__1617(.A (buffer_x2[2]), .B (buffer_x2[5]), .Y (n_60));
  NAND2XL g2461__2802(.A (pixel_in[1]), .B (pixel_in[2]), .Y (n_5));
  NOR2XL g2459__1705(.A (valid_in), .B (rst), .Y (n_12));
  CLKINVX1 g2465(.A (rst), .Y (n_4));
endmodule
endmodule


