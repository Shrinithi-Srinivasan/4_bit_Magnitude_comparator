module tb_tm;
    reg [3:0] Data_in_A;
    reg [3:0] Data_in_B;
    wire less;
    wire equal;
    wire greater;
    comparator uut (
        .Data_in_A(Data_in_A), 
        .Data_in_B(Data_in_B), 
        .less(less), 
        .equal(equal), 
        .greater(greater)
    );
    initial begin
        $dumpfile("dumpfile.vcd");
    	$dumpvars(1);
        Data_in_A = 10;
        Data_in_B = 12;
        #100;
        Data_in_A = 15;
        Data_in_B = 11;
        #100;
        Data_in_A = 10;
        Data_in_B = 10;
        #100;
    end
endmodule
