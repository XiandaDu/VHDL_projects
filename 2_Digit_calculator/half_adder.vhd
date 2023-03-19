library ieee;
use ieee.std_logic_1164.all;
--Lab2 report LabSection 203 Group# 6; Xianda Du, Haoran Zhu

Entity half_adder IS
	PORT
	(
		Input_A: IN std_logic;			--input one bit
		Input_B: IN std_logic;			--input another one bit
		Carry_OUTPUT : out std_logic; --output 1 when both A and B are 1, the carry bit
		sum_output : out std_logic		--output 1 when A=1, B=0 or A=0, B=1; otherwise 0
	);
END half_adder;

Architecture gates OF half_adder IS

Begin

	sum_output <= (Input_A XOR INput_B );
	carry_output <= (input_A AND input_B);

END gates;