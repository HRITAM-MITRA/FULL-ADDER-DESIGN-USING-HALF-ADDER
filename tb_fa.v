// TESTBENCH CODE

module tb_fa();
       reg a,b,Cin;  // Inputs of the full adder
       wire sum,Cout; // Outputs of the full adder 
initial begin
    $dumpfile("full_adder.vcd");  // all the binaries will be dumped into that file
    $dumpvars; // all the variables will be dumped into that file
    $display("CHECKING THE OUTPUTS OF THE FULL ADDER");
    $display ("Time \t  A \t  B  \t  Cin  \t  S  \t   Cout");
    $monitor("%g \t  %b \t  %b \t  %b \t  %b \t  %b", $time,a,b,Cin,sum,Cout); // monitoring the change of output in accordance with change of input
    
    // applying the inputs to test the characteristics of the full adder
    
    #0    {a,b,Cin}=3'b000; 
    #5   {a,b,Cin}=3'b001;
    #10 {a,b,Cin}=3'b010;
    #15 {a,b,Cin}=3'b011;
    #20 {a,b,Cin}=3'b100;
    #25 {a,b,Cin}=3'b101;
    #30 {a,b,Cin}=3'b110;
    #35 {a,b,Cin}=3'b111;
    #40 $finish ;
end
full_adder FA(a,b,Cin,sum,Cout);
endmodule   
