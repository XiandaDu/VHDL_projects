library ieee;
use ieee.std_logic_1164.all;

Entity PB_Inverters IS
	PORT
	(
		pb_n: IN std_logic_vector(3 downto 0); --active low input from pbs
		pb : OUT std_logic_vector(3 downto 0)	--active high input from pbs
	);
END PB_Inverters;

Architecture gates OF PB_Inverters IS

Begin

pb <= not(pb_n);

END gates;