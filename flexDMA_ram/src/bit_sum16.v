module bit_sum16 # (
    parameter DATA_WIDTH = 16
)(
    input clk,
    input [DATA_WIDTH -1: 0] din,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum0,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum1,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum2,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum3,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum4,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum5,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum6,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum7,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum8,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum9,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum10,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum11,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum12,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum13,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum14,
    output reg [$clog2(DATA_WIDTH) : 0] bit_sum15
);

    always @(posedge clk) begin
        bit_sum0    =   din[0];
        bit_sum1    =   din[1]      +   bit_sum0;
        bit_sum2    =   din[2]      +   bit_sum1;
        bit_sum3    =   din[3]      +   bit_sum2;
        bit_sum4    =   din[4]      +   bit_sum3;
        bit_sum5    =   din[5]      +   bit_sum4;
        bit_sum6    =   din[6]      +   bit_sum5;
        bit_sum7    =   din[7]      +   bit_sum6;
        bit_sum8    =   din[8]      +   bit_sum7;
        bit_sum9    =   din[9]      +   bit_sum8;
        bit_sum10   =   din[10]     +   bit_sum9;
        bit_sum11   =   din[11]     +   bit_sum10;
        bit_sum12   =   din[12]     +   bit_sum11;
        bit_sum13   =   din[13]     +   bit_sum12;
        bit_sum14   =   din[14]     +   bit_sum13;
        bit_sum15   =   din[15]     +   bit_sum14;
    end
endmodule
