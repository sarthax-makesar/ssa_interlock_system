`timescale 1ns / 1ps

//Function     : Monitors forward drive ADC for overdrive conditions that risk
//                exceeding the BLF578 1dB gain compression point (P1).
//                BLF578 datasheet: gain compression must stay < 1dB above P_nom.

module overdrive_protect_unit (
    input  wire        clk_fast,
    input  wire        rst_n,
    input  wire        interlock_reset_i,  // FIX #1: manual clear added
    input  wire [15:0] adc_p_drive,
    input  wire [15:0] thres_overdrive,
    output reg         trip_overdrive
);

    always @(posedge clk_fast or negedge rst_n) begin
        if (!rst_n)
            trip_overdrive <= 1'b0;
        else if (interlock_reset_i)
            trip_overdrive <= 1'b0;
        else if (adc_p_drive > thres_overdrive)
            trip_overdrive <= 1'b1;
        // Latch holds until explicit clear
    end

endmodule