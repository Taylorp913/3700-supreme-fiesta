`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2018 02:49:38 PM
// Design Name: 
// Module Name: deltasigma
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


module deltasigma(
    input clk,
    input [15:0] sample,
    output reg dout
    );
    
    reg signed [16:0] sigma ;
    reg signed [16:0] samplereg ;
    
    initial begin
        dout = 0;
        sigma = 0;
        samplereg = 0;
    end
    
    always @( posedge clk ) begin
        samplereg <= {1'b0 , sample } - (2**15);
        dout <= sigma [16];
        // Absorb delta + sigma into one operation :
        if ( sigma [16])
            sigma <= sigma + samplereg - (2**15 -1);
        else
            sigma <= sigma + samplereg + (2**15 -1);
    end
endmodule