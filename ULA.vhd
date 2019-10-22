LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_signed.all ;
use ieee.numeric_std.all;

ENTITY ULA IS
PORT (

   A:      IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
	B:		  IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
	OP:	  IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
	SAIDA:  OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
);
END ULA;

ARCHITECTURE Estrutura OF ULA IS

BEGIN

WITH OP SELECT
	SAIDA <= A + B WHEN "0010",
				A + B WHEN "0111",
				A - B WHEN "0011",
				A - B WHEN "1000",
				A and B WHEN "0100",
				A and B WHEN "1001",
				A OR B WHEN "0101",
				A OR B WHEN "1010",
				"ZZZZZZZZ" WHEN OTHERS;

END ESTRUTURA;

