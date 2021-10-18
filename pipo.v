module pipo(a,clk,rst,q);
input clk,rst;
input [3:0]a;
output [3:0]q;
wire [3:0]q;
reg [3:0]temp;
always@(posedge clk,posedge rst)
begin
if(rst==1)
temp<=4'b0000;
else
begin
temp[3]<=a[3];
temp[2]<=a[2];
temp[1]<=a[1];
temp[0]<=a[0];
end
end
assign q=temp;
endmodule