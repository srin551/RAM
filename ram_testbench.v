`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 06:25:24 PM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench();
reg [7:0]data;
 reg [5:0]addr;
 reg we, clk;
 wire [7:0]out;

 por uut( .data(data), .addr(addr), .we(we), .clk(clk), .out(out));

 always #5 clk=~clk;
 initial
 begin
 clk=0;
 we=1;

 data=8'hb4;
 addr=6'd1;
 #10;

 data=8'h74;
 addr=6'd2;
 #10;

 data=8'hc3;
 addr=6'd3;
 #10;

 we=0;
 addr=6'd2;
 #10;

 addr=6'd1;
 #10;

 we=1;
 data=8'h5c;
 addr=6'd50;
 #10;

 data=8'hab;
 addr=6'd51;
 #10;

 we=0;
 addr=6'd50;
 #1000; $finish;
 end

endmodule
