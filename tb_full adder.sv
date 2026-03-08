`timescale 1ns/1ps

module full_adder_tb;

  // Inputs
  reg a, b, cin;

  // Outputs
  wire sum, cout;

  // Instantiate the Unit Under Test (UUT)
  full_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  initial begin
    $display("A B Cin | Sum Cout");
    $display("--------|----------");

    // Test all 8 combinations
    {a, b, cin} = 3'b000; #10;
    $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

    {a, b, cin} = 3'b001; #10;
    $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

    {a, b, cin} = 3'b010; #10;
    $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

    {a, b, cin} = 3'b011; #10;
    $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

    {a, b, cin} = 3'b100; #10;
    $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

    {a, b, cin} = 3'b101; #10;
    $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

    {a, b, cin} = 3'b110; #10;
    $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

    {a, b, cin} = 3'b111; #10;
    $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

    $finish;
  end

  // Optional: dump waveforms
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);
  end

endmodule
