`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/28 15:12:25
// Design Name: 
// Module Name: multiple_tb
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


module multiple_tb();
wire [4:0] L;
reg [4:0] i;

multiple uut(i,L);

initial begin
    #10 i=5'b00001;//1
    #10 i=5'b00010;//2
    #10 i=5'b00011;//3
    #10 i=5'b00100;//4
    #10 i=5'b00101;//5
    #10 i=5'b00110;//6
    #10 i=5'b00111;//7
    #10 i=5'b01000;//8
    #10 i=5'b01001;//9
    #10 i=5'b01010;//10
    
    #10 i=5'b01111;//15
    #10 i=5'b11110;//30
    

    #10 $stop;
    
end
endmodule
