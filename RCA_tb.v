`timescale 1ns / 1ps
module RCA_tb();

    reg [15:0] x, y;
    reg c_in;
    wire [15:0] result;
    wire c_out;
    
    RCA dut (.cin(c_in), .cout(c_out), .a(x), .b(y), .sum(result));
    
    initial
    begin
        $monitor ($time, "x = %b, y = %b, result = %b, c_out = %b", x, y, result, c_out);
        
        x = 16'heeee; y  = 16'h1001; c_in = 0;
        #10 x = 16'h00ff; y = 16'h2200;
        #10 x = 16'hffff; y = 16'h0001;
        #10 $finish; 
    end
endmodule
