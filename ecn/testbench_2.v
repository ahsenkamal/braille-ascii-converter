module testbench_2();

reg[1:6]i;
wire [1:7]o1,o0;

BrailleTo7Segment dut(
.i(i),
.o1(o1),
.o0(o0)
);

integer f,x;

initial begin

f = $fopen("output.txt", "w");
i=6'b100000;

for (x =0; x < 32; x = x +1) begin
    #10
    $fwrite(f,"%b%b%b%b%b%b%b %b%b%b%b%b%b%b\n",o1[1],o1[2],o1[3],o1[4],o1[5],o1[6],o1[7],o0[1],o0[2],o0[3],o0[4],o0[5],o0[6],o0[7]);
    i <= i + 1;
end

$fclose(f); 

end
endmodule
