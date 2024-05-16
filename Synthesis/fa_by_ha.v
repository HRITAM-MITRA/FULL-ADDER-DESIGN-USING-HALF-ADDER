
// STRUCTURAL OR GATE LEVEL MODELLING OF FULL ADDER USING THE HALF ADDER
// SOURCE CODE 

module half_adder(a,b,sum,Carry);  // Half adder instance
       input a,b;    
       output  wire sum,Carry;
       assign sum = a^b;        
  	   assign Carry = a&b;
endmodule

module full_adder (a,b,Cin,sum,Cout); // Designing full adder module using half adder instance
       input a,b,Cin;
       output sum,Cout;
   	   wire C1,S1,C2;
   	   half_adder HA1(a,b,S1,C1); // For the first half adder instance
   	   half_adder HA2(Cin,S1,sum,C2); // For the first half adder instance
   	   or (Cout,C1,C2); // The output & input of OR gate
endmodule 
   	
   	
