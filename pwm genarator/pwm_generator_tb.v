`timescale 1ns/1ps

module pwm_generator_tb;

reg clk;
reg rst;

reg [7:0] duty_cycle;

wire pwm_out;

//=========================================================
// DUT
//=========================================================

pwm_generator uut (

    .clk(clk),
    .rst(rst),

    .duty_cycle(duty_cycle),

    .pwm_out(pwm_out)

);

//=========================================================
// Clock Generation
//=========================================================

initial begin

    clk = 0;

    forever #5 clk = ~clk;

end

//=========================================================
// Test Sequence
//=========================================================

initial begin

    $display("====================================");
    $display("       PWM GENERATOR TESTBENCH");
    $display("====================================");

    rst = 1;
    duty_cycle = 8'd0;

    #20;

    rst = 0;

    // 25% Duty Cycle
    duty_cycle = 8'd64;

    #2560;

    // 50% Duty Cycle
    duty_cycle = 8'd128;

    #2560;

    // 75% Duty Cycle
    duty_cycle = 8'd192;

    #2560;

    // 100% Duty Cycle
    duty_cycle = 8'd255;

    #2560;

    $display("====================================");
    $display("       SIMULATION COMPLETE");
    $display("====================================");

    $finish;

end

endmodule