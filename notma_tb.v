// Initialize global signals
				pclk = 1;
				prst = 1;
				//address with data
				paddressi = 0;
				pdatai = 0;
				// Wait 100 ns for global reset to finish
				#20;

				repeat(20) begin
					paddressi=$urandom_range(0,)
				end
				prst = 0;
				paddressi = 32'd1;
				pdatai = 32'd152;
				pwrite = 1;
				#20;
				prst = 0;
				paddressi = 32'd2;
				pdatai = 32'd1002;
				pwrite = 1;

				#20;
				paddressi = 32'd3;
				pdatai = 32'd9528;
				#20;

				paddressi = 32'd4;
				pdatai = 32'd4858;

				#20;
				paddressi = 32'd5;
				pdatai = 32'd88;
				#20;

				paddressi = 32'd6;
				pdatai = 32'd8475;
				#20;
				paddressi = 32'd7;
				pdatai = 32'd1088;
				#20;

				paddressi = 32'd8;
				pdatai = 32'd5845;
				#20;
				paddressi = 32'd9;
				pdatai = 32'd8500;
				#20;

				paddressi = 32'd10;
				pdatai = 32'd6258;




				#20;
				pwrite = 0;
				paddressi = 32'd4;

				#20;

				paddressi = 32'd5;

				#20;
				paddressi = 32'd6;

				#20;

				paddressi = 32'd7;

				#20;
				paddressi = 32'd8;

				#20;

				paddressi = 32'd9;

				// Add stimulus here

