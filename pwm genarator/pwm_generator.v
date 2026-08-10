//=========================================================
// PWM Generator
// 8-bit Resolution
//=========================================================

module pwm_generator (

    input  wire       clk,
    input  wire       rst,

    input  wire [7:0] duty_cycle,

    output reg        pwm_out

);

reg [7:0] counter;

//=========================================================
// Counter and PWM Generation
//=========================================================

always @(posedge clk or posedge rst) begin

    if (rst) begin

        counter <= 8'd0;
        pwm_out <= 1'b0;

    end

    else begin

        counter <= counter + 1'b1;

        if (counter < duty_cycle)
        else
            pwm_out <= 1'b0;

    end

end

endmodule