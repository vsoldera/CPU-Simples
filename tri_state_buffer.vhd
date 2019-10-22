library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tri_state_buffer is
    Port ( Entradas  : in  STD_LOGIC_VECTOR (7 downto 0);
           ENABLE  : in  STD_LOGIC;
           Saidas : out STD_LOGIC_VECTOR (7 downto 0));
end tri_state_buffer;

architecture Behavioral of tri_state_buffer is

begin
    
    Saidas <= (OTHERS => 'Z') WHEN (ENABLE = '0') else Entradas;

end Behavioral;