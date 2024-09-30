`include "APB_M.v"
`include "APB_S.v"

module apbmain (
		input pclk,
		prst,
		pwrite,
		input [31:0] paddressi,
		pdatai,
		output [31:0] prdata
);
		wire write, penable, psel;
		wire [31:0] paddress, pwdata;
		apbmaster a1 (
				.pclk_m(pclk),
				.prst_m(prst),
				.pwritei(pwrite),
				.address_i(paddressi),
				.pdata_i(pdatai),
				.pwrite_m(write),
				.psel_m(psel),
				.penable_m(penable),
				.paddress_m(paddress),
				.pwdata_m(pwdata),
				.prdata_m(prdata)
		);
		apbslave a2 (
				.pclk_s(pclk),
				.prst_s(prst),
				.penable_s(a1.penable_m),
				.pwrite_s(a1.pwrite_m),
				.psel_s(a1.psel_m),
				.paddress_s(a1.paddress_m),
				.pwdata_s(a1.pwdata_m),
				.prdata_s(a1.prdata_m)
		);

endmodule
