library ieee;
use ieee.std_logic_1164.all;


entity Compx4 is port (
	A, B : in std_logic_vector (3 downto 0);
	AgtB, AeqB, AsmB : out std_logic

);
end entity;




architecture compare4 of Compx4 is 


component Compx1 port(
	bit0,bit1 : in std_logic;
	AgtB, AeqB, AsmB : out std_logic
	);
end component Compx1;

signal AdaB, AdengB, AxiaoB : std_logic_vector(3 downto 0);

begin
	Com0 : Compx1 port map (A(0), B(0), AdaB(0), AdengB(0), AxiaoB(0));
	Com1 : Compx1 port map (A(1), B(1), AdaB(1), AdengB(1), AxiaoB(1));
	Com2 : Compx1 port map (A(2), B(2), AdaB(2), AdengB(2), AxiaoB(2));
	Com3 : Compx1 port map (A(3), B(3), AdaB(3), AdengB(3), AxiaoB(3));

	AgtB <= AdaB(3) or (AdengB(3) and AdaB(2)) or (AdengB(3) and AdengB(2) and AdaB(1)) or (AdengB(3) and AdengB(2) and AdengB(1) and AdaB(0));
	AeqB <= AdengB(0) and AdengB(1) and AdengB(2) and AdengB(3);
	AsmB <= AxiaoB(3) or (AdengB(3) and AxiaoB(2)) or (AdengB(3) and AdengB(2) and AxiaoB(1)) or (AdengB(3) and AdengB(2) and AdengB(1) and AxiaoB(0));

end compare4;