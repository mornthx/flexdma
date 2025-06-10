module bit_sum16 # (
    parameter DATA_WIDTH = 16
)(
    input [DATA_WIDTH -1: 0] din,
    output [$clog2(DATA_WIDTH) : 0] bit_sum0,
    output [$clog2(DATA_WIDTH) : 0] bit_sum1,
    output [$clog2(DATA_WIDTH) : 0] bit_sum2,
    output [$clog2(DATA_WIDTH) : 0] bit_sum3,
    output [$clog2(DATA_WIDTH) : 0] bit_sum4,
    output [$clog2(DATA_WIDTH) : 0] bit_sum5,
    output [$clog2(DATA_WIDTH) : 0] bit_sum6,
    output [$clog2(DATA_WIDTH) : 0] bit_sum7,
    output [$clog2(DATA_WIDTH) : 0] bit_sum8,
    output [$clog2(DATA_WIDTH) : 0] bit_sum9,
    output [$clog2(DATA_WIDTH) : 0] bit_sum10,
    output [$clog2(DATA_WIDTH) : 0] bit_sum11,
    output [$clog2(DATA_WIDTH) : 0] bit_sum12,
    output [$clog2(DATA_WIDTH) : 0] bit_sum13,
    output [$clog2(DATA_WIDTH) : 0] bit_sum14,
    output [$clog2(DATA_WIDTH) : 0] bit_sum15
);


    assign bit_sum0 = din[0];
    assign bit_sum1 = din[1]     + din[0]   ;
    assign bit_sum2 = din[2]     + din[1]   + din[0]  ;
    assign bit_sum3 = din[3]     + din[2]   + din[1]  + din[0]  ;
    assign bit_sum4 = din[4]     + din[3]   + din[2]  + din[1]  + din[0]    ;
    assign bit_sum5 = din[5]     + din[4]   + din[3]  + din[2]  + din[1]  + din[0]   ;
    assign bit_sum6 = din[6]     + din[5]   + din[4]  + din[3]  + din[2]  + din[1]   + din[0];
    assign bit_sum7 = din[7]     + din[6]   + din[5]  + din[4]  + din[3]  + din[2]   + din[1] + din[0];
    assign bit_sum8 = din[8]     + din[7]   + din[6]  + din[5]  + din[4]  + din[3]   + din[2] + din[1] + din[0];
    assign bit_sum9 = din[9]     + din[8]   + din[7]  + din[6]  + din[5]  + din[4]   + din[3] + din[2] + din[1] + din[0];
    assign bit_sum10 =din[10]    + din[9]   + din[8]  + din[7]  + din[6]  + din[5]   + din[4] + din[3] + din[2] + din[1] + din[0];
    assign bit_sum11 =din[11]    + din[10]  + din[9]  + din[8]  + din[7]  + din[6]   + din[5] + din[4] + din[3] + din[2] + din[1] + din[0];
    assign bit_sum12 =din[12]    + din[11]  + din[10] + din[9]  + din[8]  + din[7]   + din[6] + din[5] + din[4] + din[3] + din[2] + din[1]  + din[0];
    assign bit_sum13 =din[13]    + din[12]  + din[11] + din[10] + din[9]  + din[8]   + din[7] + din[6] + din[5] + din[4] + din[3] + din[2]  + din[1] + din[0];
    assign bit_sum14 =din[14]    + din[13]  + din[12] + din[11] + din[10] + din[9]   + din[8] + din[7] + din[6] + din[5] + din[4] + din[3]  + din[2] + din[1] + din[0];
    assign bit_sum15 =din[15]    + din[14]  + din[13] + din[12] + din[11] + din[10]  + din[9] + din[8] + din[7] + din[6] + din[5] + din[4]  + din[3] + din[2] + din[1] + din[0];
    
endmodule
