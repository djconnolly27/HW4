// Single-bit D Flip-Flop with enable
//   Positive edge triggered
module register
(
output reg	q,
input		d,
input		wrenable,
input		clk
);

    always @(posedge clk) begin
        if(wrenable) begin
            q <= d;
        end
    end

endmodule

module register32
(
  output wire [31:0] q,
  input [31:0] d,
  input wrenable,
  input clk
);

  genvar bitNum;
  generate
    for (bitNum = 0; bitNum < 32; bitNum= bitNum + 1) begin: genRegs
      register regOneBit(.q(q[bitNum]), .d(d[bitNum]), .wrenable(wrenable), .clk(clk));
    end
  endgenerate


endmodule

module register32zero
(
  output wire [31:0] q,
  input [31:0] d,
  input wrenable,
  input clk
);

  genvar bitNum;
  generate
    for (bitNum = 0; bitNum < 32; bitNum= bitNum + 1) begin: genRegs
      register regOneBit(.q(q[bitNum]), .d(1'b0), .wrenable(wrenable), .clk(clk));
    end
  endgenerate

endmodule
