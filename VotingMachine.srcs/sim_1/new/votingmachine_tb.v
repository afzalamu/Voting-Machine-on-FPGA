`timescale 1ns / 1ps

module votingMachine_tb;

    // Inputs
    reg clock;
    reg reset;
    reg mode;
    reg button1;
    reg button2;
    reg button3;
    reg button4;

    // Outputs
    wire [7:0] led;

    // Instantiate the Unit Under Test (UUT)
    votingMachine uut (
        .clock(clock),
        .reset(reset),
        .mode(mode),
        .button1(button1),
        .button2(button2),
        .button3(button3),
        .button4(button4),
        .led(led)
    );

    // Clock generation
    initial begin
        clock = 0;
        forever #5 clock = ~clock; // 10ns clock period
    end

    // Stimulus generation
    initial begin
        // Initialization
        reset = 1;
        mode = 0;
        button1 = 0;
        button2 = 0;
        button3 = 0;
        button4 = 0;

        #20 reset = 0; // Release reset

        // Voting phase
        #10 button1 = 1; // Candidate A gets 1 vote
        #20 button1 = 0;

        #10 button2 = 1; // Candidate B gets 2 votes
        #20 button2 = 0;
        #10 button2 = 1;
        #20 button2 = 0;

        #10 button3 = 1; // Candidate C gets 3 votes
        #20 button3 = 0;
        #10 button3 = 1;
        #20 button3 = 0;
        #10 button3 = 1;
        #20 button3 = 0;

        #10 button4 = 1; // Candidate D gets 4 votes
        #20 button4 = 0;
        #10 button4 = 1;
        #20 button4 = 0;
        #10 button4 = 1;
        #20 button4 = 0;
        #10 button4 = 1;
        #20 button4 = 0;

        // Switch to result mode
        #50 mode = 1;

        // Show votes for each candidate
        #20 button1 = 1; // Display votes for Candidate A
        #20 button1 = 0;

        #20 button2 = 1; // Display votes for Candidate B
        #20 button2 = 0;

        #20 button3 = 1; // Display votes for Candidate C
        #20 button3 = 0;

        #20 button4 = 1; // Display votes for Candidate D
        #20 button4 = 0;

        // End simulation
        #100 $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time=%0t | Reset=%b | Mode=%b | Button1=%b | Button2=%b | Button3=%b | Button4=%b | LED=%h",
                 $time, reset, mode, button1, button2, button3, button4, led);
    end

endmodule
