`timescale 1ns/1ps
module tb;
reg clk;
reg rst;
reg in;
wire out;

lsr dut(clk,rst,in,out);

initial
begin
clk=0;
rst=0;
#5 rst=1;
#5 rst=0;
end

always #5 clk=~clk;

initial
begin
in=1;
@(negedge clk);
in=0;
@(negedge clk);
in=1;
@(negedge clk);
in=0;
@(negedge clk);
in=0;
@(negedge clk);
in=1;
@(negedge clk);
in=0;
@(negedge clk);
in=1;
@(negedge clk);
in=1;
@(negedge clk);
in=1;
@(negedge clk);
@(negedge clk);
@(negedge clk);
$finish;
end

initial
begin
$dumpfile("lsr.vcd");
$dumpvars(1);
end

initial
$monitor($time, "clk=%b rst=%b in=%b out=%b",clk,rst,in,out);
endmodule
