module apbslave (
		input pclk_s,
		prst_s,
		penable_s,
		pwrite_s,
		psel_s,
		input [31:0] paddress_s,
		pwdata_s,
		output reg [31:0] prdata_s
);
		reg [1:0] present_s, next_s;
		parameter idle_s = 2'b00,setup_s = 2'b01,access_s = 2'b10;
		integer i;
		reg [0:31] mem[0:10];

		always @(posedge pclk_s) begin
				if (prst_s) begin
						for (i = 0; i < 11; i = i + 1) begin
								mem[i] = 0;
						end
						present_s <= idle_s;
				end 
				else begin
						present_s <= next_s;
				end
		end

		always @(present_s) begin
				case (present_s)
						idle_s: next_s = setup_s;
						setup_s: begin
								if (pwrite_s) next_s = access_s;
								else next_s = access_s;
						end
						access_s: begin
							$strobe("%0d,%0d",psel_s,penable_s);
								//if(psel_s==1 && penable_s==1) begin
								if (pwrite_s) begin
										$info("write");
										mem[paddress_s] <= pwdata_s;
										next_s = setup_s;
								end else begin
										$info("read");
										prdata_s <= mem[paddress_s];
										next_s = setup_s;
								end
						end
                        //end
				endcase
		end
endmodule
