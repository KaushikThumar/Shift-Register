module siso(a,clk,rst,q);
input clk,rst;
input a;
output q;
wire q;
reg [3:0]temp;
always@(posedge clk,posedge rst)
begin
if(rst==1)
temp<=4'b0000;
else
begin
temp[3]<=temp[2];
temp[2]<=temp[1];
temp[1]<=temp[0];
temp[0]<=a;
end
end
assign q=temp[3];
endmodule