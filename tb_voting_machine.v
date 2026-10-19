
`timescale 1ns/1ps

module tb_voting_machine;

reg clk;
reg reset;
reg vote_a, vote_b, vote_c;

wire [7:0] count_a, count_b, count_c;

voting_machine dut (
    .clk(clk),
    .reset(reset),
    .vote_a(vote_a),
    .vote_b(vote_b),
    .vote_c(vote_c),
    .count_a(count_a),
    .count_b(count_b),
    .count_c(count_c)
);

// Generate a clock with a 10 ns period
always #5 clk = ~clk;

task cast_vote;
    input reg a;
    input reg b;
    input reg c;
    begin
        @(negedge clk);
        vote_a = a;
        vote_b = b;
        vote_c = c;

        @(negedge clk);
        vote_a = 0;
        vote_b = 0;
        vote_c = 0;
    end
endtask

initial begin
    clk = 0;
    reset = 1;
    vote_a = 0;
    vote_b = 0;
    vote_c = 0;

    // Reset the counters
    repeat (2) @(negedge clk);
    reset = 0;

    // Cast votes: A twice, B once, C three times
    cast_vote(1, 0, 0);
    cast_vote(1, 0, 0);
    cast_vote(0, 1, 0);
    cast_vote(0, 0, 1);
    cast_vote(0, 0, 1);
    cast_vote(0, 0, 1);

    // Test simultaneous inputs: no count should change
    cast_vote(1, 1, 0);

    #1;
    $display("Candidate A votes: %0d", count_a);
    $display("Candidate B votes: %0d", count_b);
    $display("Candidate C votes: %0d", count_c);

    if (count_a == 2 && count_b == 1 && count_c == 3)
        $display("PASS: All voting tests passed.");
    else
        $display("FAIL: Voting test failed.");

    $finish;
end

endmodule
