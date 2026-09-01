module full_adder (
	input a,
	input b,
	input ci,
	output s,
	output co
);

	//Modelagem dataflow
	
		//assign s = (a & b & ci) | (~a & b & ~ci) | (~a & ~b & ci) | (a & ~b & ~ci);
		//assign co = (a & b) | (ci & b) | (ci & a);
		
	//Modelagem primitiva
	
		//carry out
			
			wire w1, w2, w3;
			and #1 u1(w1, a, b);
			and #1 u2(w2, ci, b);
			and #1 u3(w3, ci, a);
			or	 #1 u4(co, w1, w2, w3);

endmodule 