module alu_4bit (
    input  [3:0] A, B,        // 4-bit inputs
    input  [2:0] opcode,      // control signal
    output reg [3:0] Y,       // result
    output reg carry          // carry/borrow flag
);

always @(*) begin
    carry = 0;  // default

    case (opcode)
        3'b000: {carry, Y} = A + B;        // Addition
        3'b001: {carry, Y} = A - B;        // Subtraction
        3'b010: Y = A & B;                 // AND
        3'b011: Y = A | B;                 // OR
        3'b100: Y = A ^ B;                 // XOR
        3'b101: Y = ~A;                    // NOT (only A)
        
        default: Y = 4'b0000;
    endcase
end

endmodule
