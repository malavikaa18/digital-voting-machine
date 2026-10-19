
module voting_machine (
    input wire clk,
    input wire reset,
    input wire vote_a,
    input wire vote_b,
    input wire vote_c,
    output reg [7:0] count_a,
    output reg [7:0] count_b,
    output reg [7:0] count_c
);

always @(posedge clk) begin
    if (reset) begin
        count_a <= 8'd0;
        count_b <= 8'd0;
        count_c <= 8'd0;
    end
    else begin
        case ({vote_a, vote_b, vote_c})
            3'b100: count_a <= count_a + 1'b1;
            3'b010: count_b <= count_b + 1'b1;
            3'b001: count_c <= count_c + 1'b1;
            default: begin
                // No vote, or multiple buttons pressed:
                // do not change any count.
            end
        endcase
    end
end

endmodule
