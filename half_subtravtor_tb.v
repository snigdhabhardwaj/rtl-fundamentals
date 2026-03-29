module half_subtractor_tb;
    reg a, b;
    wire diff, borrow;

    half_subtractor uut (
        .a      (a),
        .b      (b),
        .diff   (diff),
        .borrow (borrow)
    );

    initial begin
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0, half_subtractor_tb);

        $display("a b | diff borrow");
        $display("-----------------");

        a=0; b=0; #10;
        $display("%b %b |  %b     %b", a, b, diff, borrow);

        a=0; b=1; #10;
        $display("%b %b |  %b     %b", a, b, diff, borrow);

        a=1; b=0; #10;
        $display("%b %b |  %b     %b", a, b, diff, borrow);

        a=1; b=1; #10;
        $display("%b %b |  %b     %b", a, b, diff, borrow);

        $finish;
    end
endmodule