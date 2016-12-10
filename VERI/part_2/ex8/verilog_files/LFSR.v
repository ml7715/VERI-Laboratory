module LFSR(CLK, en, COUNT);

	input CLK;
	input en;
	
	output [6:1] COUNT;
	
	reg [6:1] COUNT;
	initial COUNT = 6'd1;
		
	always @ (posedge CLK)
		if(en == 1'b1)
			COUNT <= {COUNT[5:1], COUNT[6] ^ COUNT[1]};
		else
			COUNT <= COUNT;
		
endmodule
	
