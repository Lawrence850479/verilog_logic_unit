`timescale 1ns/1ps
`include "sel_logic.v"

module tb_sel_logic();

   reg [3:0] tb_a, tb_b;
   reg [1:0] tb_opcode;
   wire [3:0] tb_result;

sel_logic dut(.a(tb_a), .b(tb_b), .opcode(tb_opcode), .result(tb_result));

initial begin 
    $monitor("%t, A = %b, B = %b, opcode = %b| Result = %b", $time, tb_a, tb_b, tb_opcode, tb_result);
    tb_a = 4'b1010; tb_b = 4'b1100; tb_opcode = 00; #10;
    tb_opcode = 01; #10; 
    tb_opcode = 10; #10; 
    tb_opcode = 11; #10;
    $finish;
end

endmodule 