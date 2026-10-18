`timescale 1ns/1ps
`include "basic_logic.v"

module tb_basic_logic();

   reg [3:0] tb_a, tb_b;
   wire [3:0] tb_and_out;
   wire [3:0] tb_or_out;
   wire [3:0] tb_xor_out; 
   wire [3:0] tb_not_out;

basic_logic dut(.a(tb_a), .b(tb_b), .and_out(tb_and_out), .or_out(tb_or_out), .xor_out(tb_xor_out), .not_out(tb_not_out));

initial begin 
    $monitor("%t, A = %b, B = %b, | AND = %b, OR %b, XOR = %b, NOT = %b", $time, tb_a, tb_b, tb_and_out, tb_or_out, tb_xor_out, tb_not_out);
    tb_a = 4'b1010; tb_b = 4'b1100; #10;
    tb_a = 4'b1111; tb_b = 4'b0000; #10;
    tb_a = 4'b0101; tb_b = 4'b0011; #10;
    tb_a = 4'b0000; tb_b = 4'b1111; #10;
    $finish;
end

endmodule 