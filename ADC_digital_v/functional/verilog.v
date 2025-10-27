//Verilog HDL for "ADC", "Reg_Dig_Val" "config"
//File: Reg_Dig_Val
//Purpose: Register for digital value 

module ADC_digital_v ( 

input comp_in,
input start,clk,rst_n,
output [7:0] dig_val,
output sample,
output sampleb,
output eoc,
output reg [7:0] dig_val_reg
);


reg [9:0] sreg;
reg [7:0] dacreg;
assign sample = sreg[9];
assign sampleb = ~sreg[9];
assign eoc = sreg[0];
assign dig_val = dacreg;
wire reset;
assign reset = start;


always @(posedge clk or negedge rst_n)

begin
  if (~rst_n) begin 
      sreg <= 10'd0;
      dacreg <= 8'd0;
  end
  else begin
		sreg[9:0] <= {start,sreg[9:1]};
		if(eoc) dig_val_reg <= dacreg;
		if(reset == 1) dacreg[7:0] <= 0;
		else begin

		//	dacreg[7:0] <= sreg[8:1] | ( (sreg[7:0] & {8{~comp_in}}) | (~sreg[7:0] & dacreg[7:0]) );

dacreg[7:0] <= sreg[9:2] | ( (sreg[8:1] & {~comp_in,~comp_in,~comp_in,~comp_in,~comp_in,~comp_in,~comp_in,~comp_in}) | (~sreg[8:1] & dacreg[7:0]) );

		end 	
  end//no reset

end//alw

       
endmodule

