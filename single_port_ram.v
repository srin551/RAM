`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 06:23:15 PM
// Design Name: 
// Module Name: por
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


module por(
input [7:0] data, //data input
 input [5:0] addr, //address
 input we, //write enable
 input clk, // clock
 output [7:0] out //output


    );
    
    reg [7:0] ram[63:0]; /* 64 memory locations, requires 6-address lines to
    represent the location and each location has 8 bit of data */
     reg [5:0] addr_reg; //address register
    
     always@(posedge clk)
     begin
     if(we)
      ram[addr]<= data;
      else
      addr_reg <= addr;
      end
      assign out=ram[addr_reg];
endmodule
