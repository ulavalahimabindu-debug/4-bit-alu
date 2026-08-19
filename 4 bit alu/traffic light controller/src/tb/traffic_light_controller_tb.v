`timescale 1ns/1ps

module traffic_light_controller_tb;

    reg clk;
    reg reset;

    wire red;
    wire yellow;
    wire green;

    // Instantiate the Traffic Light Controller
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initialize
        clk = 1'b0;
        reset = 1'b1;

        $display("======================================");
        $display("     TRAFFIC LIGHT CONTROLLER");
        $display("======================================");
        $display("Time\tReset\tRed\tYellow\tGreen");
        $display("--------------------------------------");

        // Reset
        #10;
        $display("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, red, yellow, green);

        // Release reset
        reset = 1'b0;

        // RED -> GREEN
        #10;
        $display("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, red, yellow, green);

        // GREEN -> YELLOW
        #10;
        $display("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, red, yellow, green);

        // YELLOW -> RED
        #10;
        $display("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, red, yellow, green);

        // RED -> GREEN
        #10;
        $display("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, red, yellow, green);

        // GREEN -> YELLOW
        #10;
        $display("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, red, yellow, green);

        // YELLOW -> RED
        #10;
        $display("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, red, yellow, green);

        $display("======================================");
        $display("       SIMULATION COMPLETED");
        $display("======================================");

        $finish;
    end

endmodule