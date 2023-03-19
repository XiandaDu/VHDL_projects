library ieee;
use ieee.std_logic_1164.all;


entity Compx1 is port (
	bit0,bit1 : in std_logic;
	AgtB, AeqB, AsmB : out std_logic

);
end entity;

architecture compare of Compx1 is 
begin
	AgtB <= bit0 and (Not bit1);
	AeqB <= bit0 XNOR bit1;
	AsmB <= (Not bit0) and bit1;
end compare;