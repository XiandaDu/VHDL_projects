library ieee;
use ieee.std_logic_1164.all;
--Lab2 report LabSection 203 Group# 6; Xianda Du, Haoran Zhu

entity two_to_one_mux is 
	port 
	(
		mux_in0, mux_in1 : in  std_logic_vector(3 downto 0); --Hex number and 4bit adder result respectively
		mux_select : in std_logic;									  --pb2 result, should be active high input
		logic_out :out std_logic_vector (3 downto 0)			  --Result to be sent to SevenSeg Decoder
	);
	
end two_to_one_mux;


architecture mux of two_to_one_mux is 

	begin 
	
	with mux_select select
	logic_out <= mux_in0 when '0', --Return Hex value from sw input
					 mux_in1 when '1'; --Return 4bit adder result
	
	end mux;