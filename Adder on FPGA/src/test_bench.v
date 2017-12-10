// test bench for the behavioral model of 4-bit ripple carry adder
module tb ();

// inputs are reg type
reg Cin, X[3:0], Y[3:0];

// outputs are wire type
wire Cout, S[3:0];


// instantiation of the module
ripple_adder_behavioral dut(.X(X), .Y(Y), .Cin(Cin), .S(S), .Cout(Cout));

initial begin
// initialization of the reg variables
Cin = 0; X = 4'b0000; Y = 4'b0000; #10

Cin = 0; X = 4'b0001; Y = 4'b0001; #10
Cin = 0; X = 4'b0010; Y = 4'b0010; #10
Cin = 0; X = 4'b0100; Y = 4'b0100; #10
Cin = 0; X = 4'b1000; Y = 4'b1000; #10
Cin = 1; X = 4'b0001; Y = 4'b0001; #10
Cin = 1; X = 4'b0010; Y = 4'b0010; #10
Cin = 1; X = 4'b0100; Y = 4'b0100; #10
Cin = 1; X = 4'b1000; Y = 4'b1000; #10


end
endmodule
