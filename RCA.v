`timescale 1ns / 1ps
module RCA( a, b, cin, sum, cout);
    
    parameter N =16;
    input [N-1:0] a, b; input cin;
    output [N-1:0] sum; output cout;
    
    wire [N:0] interim_carry;
    assign interim_carry[0] = cin;
    assign cout = interim_carry[N];
    
    genvar p;
    generate for (p=0; p<N; p=p+1)
        begin : fa
            wire x1, x2, x3;
            xor g0 (x1, a[p], b[p]);
            xor g1 (sum[p], x1, interim_carry[p]);
            and g2 (x2, x1, interim_carry[p]);
            and g3 (x3, a[p], b[p]);
            or g4(interim_carry[p+1], x2, x3);
            
        end
    endgenerate
    
    
endmodule
