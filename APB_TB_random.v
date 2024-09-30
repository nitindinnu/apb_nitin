module tb_random_apbmain;

		// Inputs
		reg pclk;
		reg prst;
		reg pwrite;
		reg [31:0] paddressi;
		reg [31:0] pdatai;
		//reg pwrite;
		// Outputs
		wire [31:0] prdata;
		reg[5:0]i;

		// Instantiate the Unit Under Test (UUT)
		apbmain uut (
				.pclk(pclk),
				.prst(prst),
				.pwrite(pwrite),
				.paddressi(paddressi),
				.pdatai(pdatai),
				.prdata(prdata)
		);
		always #5 pclk = ~pclk;

		initial begin
				initial_vals();
				#20 pass_inputs_to_master();
				#10 get_data_from_slave();
				#30 $stop;
		end

		task initial_vals();
		begin
				pclk = 1;
				prst = 1;
				paddressi = 0;
				pdatai = 0;

		end
		endtask

		task  pass_inputs_to_master();
		begin
				prst = 0;
				pwrite = 1;
				for(i=0;i<11;i=i+1) begin
						
						//paddressi =$urandom_range(0,10);
						paddressi = i;
						pdatai = i*5;//$urandom_range(5,10);
						#20;
				end
		end
		endtask

		task get_data_from_slave();
		begin
				pwrite = 0;
				for(i=0;i<11;i=i+1) begin
						paddressi = i;//$urandom_range(0,10);
						#20;
				end
		end
		endtask	

endmodule
