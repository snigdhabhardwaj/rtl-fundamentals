module full_subtractor_tb;
    reg a, b, bin;
    wire diff, bout;

    full_subtractor uut (
        .a    (a),
        .b    (b),
        .bin  (bin),
        .diff (diff),
        .bout (bout)
    );

    initial begin
        $dumpfile("full_subtractor.vcd");
        $dumpvars(0, full_subtractor_tb);

        $display("a b bin | diff bout");
        $display("-------------------");

        a=0; b=0; bin=0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);

        a=0; b=0; bin=1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);

        a=0; b=1; bin=0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);

        a=0; b=1; bin=1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);

        a=1; b=0; bin=0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);

        a=1; b=0; bin=1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);

        a=1; b=1; bin=0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);

        a=1; b=1; bin=1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, bin, diff, bout);

        $finish;
    end
endmodule