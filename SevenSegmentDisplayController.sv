`timescale 1ns / 1ps

module SevenSegmentDisplayController(
        input logic clk,
        [3:0]num3, [3:0]num2, [3:0]num1, [3:0]num0, [3:0]dpSelector,
        output logic [3:0]anode, [6:0]cathode, dp
    );
    
    logic [6:0]cathodeTemp;
    logic [3:0]anodeTemp;
    logic dpTemp;
    logic [20:0]counter;
    
    always_ff @(posedge clk)
    begin
        counter <= counter + 1;
    end
    
    always @(*)
    begin
        case(counter[20:19])
        2'b00:
            begin
                case(num0)
                    4'b0000 : cathodeTemp = 7'b1000000; //to display 0
                    4'b0001 : cathodeTemp = 7'b1111001; //to display 1
                    4'b0010 : cathodeTemp = 7'b0100100; //to display 2
                    4'b0011 : cathodeTemp = 7'b0110000; //to display 3
                    4'b0100 : cathodeTemp = 7'b0011001; //to display 4
                    4'b0101 : cathodeTemp = 7'b0010010; //to display 5
                    4'b0110 : cathodeTemp = 7'b0000010; //to display 6
                    4'b0111 : cathodeTemp = 7'b1111000; //to display 7
                    4'b1000 : cathodeTemp = 7'b0000000; //to display 8
                    4'b1001 : cathodeTemp = 7'b0010000; //to display 9
                    4'b1010 : cathodeTemp = 7'b0001000; //to display A
                    4'b1011 : cathodeTemp = 7'b0000011; //to display B
                    4'b1100 : cathodeTemp = 7'b1000110; //to display C
                    4'b1101 : cathodeTemp = 7'b0100001; //to display D
                    4'b1110 : cathodeTemp = 7'b0000110; //to display E
                    4'b1111 : cathodeTemp = 7'b0001110; //to display F
                    //default : cathodeTemp = 7'b0111111; //dash (in case of future modifications)
                endcase
                
                anodeTemp <= 4'b1110;
                dpTemp <= ~dpSelector[0];
            end
        2'b01:
            begin
                case(num1)
                    4'b0000 : cathodeTemp = 7'b1000000; //to display 0
                    4'b0001 : cathodeTemp = 7'b1111001; //to display 1
                    4'b0010 : cathodeTemp = 7'b0100100; //to display 2
                    4'b0011 : cathodeTemp = 7'b0110000; //to display 3
                    4'b0100 : cathodeTemp = 7'b0011001; //to display 4
                    4'b0101 : cathodeTemp = 7'b0010010; //to display 5
                    4'b0110 : cathodeTemp = 7'b0000010; //to display 6
                    4'b0111 : cathodeTemp = 7'b1111000; //to display 7
                    4'b1000 : cathodeTemp = 7'b0000000; //to display 8
                    4'b1001 : cathodeTemp = 7'b0010000; //to display 9
                    4'b1010 : cathodeTemp = 7'b0001000; //to display A
                    4'b1011 : cathodeTemp = 7'b0000011; //to display B
                    4'b1100 : cathodeTemp = 7'b1000110; //to display C
                    4'b1101 : cathodeTemp = 7'b0100001; //to display D
                    4'b1110 : cathodeTemp = 7'b0000110; //to display E
                    4'b1111 : cathodeTemp = 7'b0001110; //to display F
                    //default : cathodeTemp = 7'b0111111; //dash (in case of future modifications)
                endcase
                
                anodeTemp <= 4'b1101;
                dpTemp <= ~dpSelector[1];
            end
        2'b10:
            begin
                case(num2)
                    4'b0000 : cathodeTemp = 7'b1000000; //to display 0
                    4'b0001 : cathodeTemp = 7'b1111001; //to display 1
                    4'b0010 : cathodeTemp = 7'b0100100; //to display 2
                    4'b0011 : cathodeTemp = 7'b0110000; //to display 3
                    4'b0100 : cathodeTemp = 7'b0011001; //to display 4
                    4'b0101 : cathodeTemp = 7'b0010010; //to display 5
                    4'b0110 : cathodeTemp = 7'b0000010; //to display 6
                    4'b0111 : cathodeTemp = 7'b1111000; //to display 7
                    4'b1000 : cathodeTemp = 7'b0000000; //to display 8
                    4'b1001 : cathodeTemp = 7'b0010000; //to display 9
                    4'b1010 : cathodeTemp = 7'b0001000; //to display A
                    4'b1011 : cathodeTemp = 7'b0000011; //to display B
                    4'b1100 : cathodeTemp = 7'b1000110; //to display C
                    4'b1101 : cathodeTemp = 7'b0100001; //to display D
                    4'b1110 : cathodeTemp = 7'b0000110; //to display E
                    4'b1111 : cathodeTemp = 7'b0001110; //to display F
                    //default : cathodeTemp = 7'b0111111; //dash (in case of future modifications)
                endcase
                
                anodeTemp <= 4'b1011;
                dpTemp <= ~dpSelector[2];
            end
        2'b11:
            begin
                case(num3)
                    4'b0000 : cathodeTemp = 7'b1000000; //to display 0
                    4'b0001 : cathodeTemp = 7'b1111001; //to display 1
                    4'b0010 : cathodeTemp = 7'b0100100; //to display 2
                    4'b0011 : cathodeTemp = 7'b0110000; //to display 3
                    4'b0100 : cathodeTemp = 7'b0011001; //to display 4
                    4'b0101 : cathodeTemp = 7'b0010010; //to display 5
                    4'b0110 : cathodeTemp = 7'b0000010; //to display 6
                    4'b0111 : cathodeTemp = 7'b1111000; //to display 7
                    4'b1000 : cathodeTemp = 7'b0000000; //to display 8
                    4'b1001 : cathodeTemp = 7'b0010000; //to display 9
                    4'b1010 : cathodeTemp = 7'b0001000; //to display A
                    4'b1011 : cathodeTemp = 7'b0000011; //to display B
                    4'b1100 : cathodeTemp = 7'b1000110; //to display C
                    4'b1101 : cathodeTemp = 7'b0100001; //to display D
                    4'b1110 : cathodeTemp = 7'b0000110; //to display E
                    4'b1111 : cathodeTemp = 7'b0001110; //to display F
                    //default : cathodeTemp = 7'b0111111; //dash (in case of future modifications)
                endcase
                
                anodeTemp <= 4'b0111;
                dpTemp <= ~dpSelector[3];
            end
        endcase
    end
    
    assign anode = anodeTemp;
    assign cathode = cathodeTemp;
    assign dp = dpTemp;
    
endmodule
