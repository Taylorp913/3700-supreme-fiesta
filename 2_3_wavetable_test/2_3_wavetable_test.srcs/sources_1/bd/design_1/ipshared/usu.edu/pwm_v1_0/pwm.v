`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2018 03:23:50 PM
// Design Name: 
// Module Name: pwm
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


module pwm(
    input clk,
    input [7:0] din,
    output sout
    );
    
    reg [7:0] count;
    reg sout;
    
    initial begin
        count = 0;
        sout = 0;    
    end
    
    //
    always @(posedge clk) begin
        count <= count + 1; 
        if (count > din)
            sout <= 0;
        else
            sout <= 1;
    end

endmodule
