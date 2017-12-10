// this verilog code implements an n-bit ripple carry adder using behavioral design

module ripple4_beh(X, Y, Cin, S, Cout);
	
	parameter n = 4;

	input [n-1:0] X, Y;
	input Cin;

	output reg [n-1:0] S;
	output reg Cout;

	// intermediate ripple carry
	reg [n:0] C;

	// index for the 'for' loop
	integer k;

	always@(X, Y, Cin)
	begin
		
		C[0] = Cin;

		for(k = 0; k <= n-1; k = k + 1)
		begin
		
			S[k] = X[k] ^ Y[k] ^ C[k];
			C[k+1] = (X[k] & Y[k]) | (C[k] & X[k]) | (C[k] & Y[k]);

		end

		Cout = C[n];
	end


endmodule
