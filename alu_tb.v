`timescale 1ns/1ps

module alu_tb;

reg [3:0] A, B;
reg [2:0] opcode;
wire [3:0] Y;
wire carry;

// Instantiate ALU
alu_4bit uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .Y(Y),
    .carry(carry)
);

initial begin
    $display("A B opcode | Y carry");

    // Test Addition
    A = 4'b0101; B = 4'b0011; opcode = 3'b000; #10;
    
    // Test Subtraction
    A = 4'b0101; B = 4'b0011; opcode = 3'b001; #10;
    
    // Test AND
    A = 4'b1100; B = 4'b1010; opcode = 3'b010; #10;
    
    // Test OR
    A = 4'b1100; B = 4'b1010; opcode = 3'b011; #10;
    
    // Test XOR
    A = 4'b1100; B = 4'b1010; opcode = 3'b100; #10;
    
    // Test NOT
    A = 4'b1100; opcode = 3'b101; #10;

    $stop;
end

endmodule
