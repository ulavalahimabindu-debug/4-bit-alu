`timescale 1ns/1ps

module alu_4bit_tb;

    reg  [3:0] A;
    reg  [3:0] B;
    reg  [2:0] ALU_Sel;

    wire [3:0] Result;
    wire       Carry;
    wire       Zero;

    // Instantiate ALU
    alu_4bit uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .Result(Result),
        .Carry(Carry),
        .Zero(Zero)
    );

    initial begin

        $display("==============================================");
        $display("          4-BIT ALU TESTBENCH");
        $display("==============================================");
        $display("Time\tA\tB\tSel\tResult\tCarry\tZero");
        $display("----------------------------------------------");

        // Addition
        A = 4'b0101;
        B = 4'b0011;
        ALU_Sel = 3'b000;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, ALU_Sel, Result, Carry, Zero);

        // Subtraction
        A = 4'b1001;
        B = 4'b0011;
        ALU_Sel = 3'b001;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, ALU_Sel, Result, Carry, Zero);

        // AND
        A = 4'b1100;
        B = 4'b1010;
        ALU_Sel = 3'b010;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, ALU_Sel, Result, Carry, Zero);

        // OR
        A = 4'b1100;
        B = 4'b1010;
        ALU_Sel = 3'b011;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, ALU_Sel, Result, Carry, Zero);

        // XOR
        A = 4'b1100;
        B = 4'b1010;
        ALU_Sel = 3'b100;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, ALU_Sel, Result, Carry, Zero);

        // NOT A
        A = 4'b1010;
        B = 4'b0000;
        ALU_Sel = 3'b101;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, ALU_Sel, Result, Carry, Zero);

        // Increment A
        A = 4'b0111;
        B = 4'b0000;
        ALU_Sel = 3'b110;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, ALU_Sel, Result, Carry, Zero);

        // Decrement A
        A = 4'b1000;
        B = 4'b0000;
        ALU_Sel = 3'b111;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, ALU_Sel, Result, Carry, Zero);

        $display("==============================================");
        $display("           SIMULATION COMPLETED");
        $display("==============================================");

        $finish;
    end

endmodule