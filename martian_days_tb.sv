module tb;

reg [4:0] M;
reg LY;
wire D27, D28;

martian_days DUT (M,LY,D27,D28); 

initial
begin
for(M=0; M<=23; M=M+1)
begin
LY=0; #10;
LY=1; #10;
$display("Month = %d and LeapYear Status:",M,LY);
$display("Is it 28 Days:",D28);
$display("Is it 27 Days:",D27);
end
$finish();
end
endmodule