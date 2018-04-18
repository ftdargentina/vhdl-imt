library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity deco is
generic(
    NB_OUTPUT_SIG : integer := 4; --- nombre de bits
    NB_DISPLAY : integer := 8--- peut compter jusqu'� G_Max inclus
    );
port ( enb : in STD_LOGIC;
       i_mux : in STD_LOGIC_VECTOR (NB_OUTPUT_SIG-1 downto 0);
       o_display : out STD_LOGIC_VECTOR (NB_DISPLAY-1 downto 0)
       );
end entity deco;

architecture Behavioral of deco is

begin

process (i_mux,enb) is
begin 
    if(enb = '1') then
    case i_mux is
        when "0000" =>   o_display <= "00000011";
        when "0001" =>   o_display <= "10011111";
        when "0010" =>   o_display <= "00100101";
        when "0011" =>   o_display <= "00001101";
        when "0100" =>   o_display <= "10011001";
        when "0101" =>   o_display <= "01001001";
        when "0110" =>   o_display <= "01000001";
        when "0111" =>   o_display <= "00011111";
        when "1000" =>   o_display <= "00000001";
        when "1001" =>   o_display <= "00001001"; 
        when others =>   o_display <= "11111111";
    end case;
    else
        o_display <= "11111110";
    end if;
end process;

end Behavioral;
