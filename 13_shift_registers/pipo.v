
module pipo(input clk,rst,load,input [3:0]pin,output reg [3:0]pout);

reg [3:0]temp;

always @(posedge clk) begin
    if(rst) 
        temp <= 4'b0000;
    else if(load) begin
        temp <= pin;
        pout <= pin;
    end
end

endmodule