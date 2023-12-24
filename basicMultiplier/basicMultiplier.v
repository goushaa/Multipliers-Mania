module basicMultiplier(
    input signed [31:0] a,
    input signed [31:0] b,
    output reg signed [63:0] result,
    output reg overFlow
);

    always @ (a or a)
    begin
        result = a * b;
        overFlow = (a[31] == b[31] && a[31] != result[63]) ? 1'b1 : 1'b0;
    end

endmodule
