//Verilog Code for Homework-1 ECE-571
//Detect number of days in month For Martian Calender
//By Venkata Sriram Kamarajugadda

//D27 = M0.LY’ + M0.M4' + M0.M3 + M0.M2' + M0.M1'
//D28 = M0.LY’ + M0.LY’ + M4.M2.M1.M0.LY 

module martian_days (M,LY,D27,D28);

input [4:0] M;
input LY;
output D27, D28; 

assign D27 = (M[0] & ~LY) | (M[0] & ~M[4]) | (M[0] & M[3]) | (M[0] & ~M[2]) | (M[0] & ~M[1]); 
assign D28 = ~M[0] | (M[4] & M[2] & M[1] & M[0] & LY);

endmodule