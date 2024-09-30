module apbmaster (
		input pclk_m,prst_m,pwritei,
		input [31:0] address_i,pdata_i,
		output reg pwrite_m,psel_m,penable_m,
		output reg [31:0] paddress_m,pwdata_m,
		inout [31:0] prdata_m
);
		reg [1:0] present_m, next_m;
		parameter idle_m = 2'b00,setup_m = 2'b01,access = 2'b10;

		always @(posedge pclk_m) begin
				present_m <= prst_m ? idle_m:next_m;
		end

		always @(present_m) begin
				case (present_m)
						idle_m: begin
								pwrite_m <= 0;
								psel_m <= 0;
								penable_m <= 0;
								paddress_m <= 0;
								pwdata_m <= 0;
								next_m <= setup_m;
						end
						setup_m: begin

								pwrite_m <= pwritei;
								psel_m <= 1;
								// penable_m<=0;
								paddress_m <= address_i;
								pwdata_m <= pdata_i;
								next_m <= access;

						end
						access: begin
								penable_m <= 1;
								next_m <= setup_m;
						end
				endcase
		end
endmodule
