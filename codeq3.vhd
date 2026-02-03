library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        Cin   : in  STD_LOGIC;
        SUM   : out STD_LOGIC;
        Cout  : out STD_LOGIC
    );
end full_adder;

architecture Behavioral of full_adder is
begin

    process(A, B, Cin)
    begin

        -- SUM logic using IF/ELSE (behavioral XOR)
        if (A = '0' and B = '0' and Cin = '0') then
            SUM <= '0';
        elsif (A = '0' and B = '0' and Cin = '1') then
            SUM <= '1';
        elsif (A = '0' and B = '1' and Cin = '0') then
            SUM <= '1';
        elsif (A = '0' and B = '1' and Cin = '1') then
            SUM <= '0';
        elsif (A = '1' and B = '0' and Cin = '0') then
            SUM <= '1';
        elsif (A = '1' and B = '0' and Cin = '1') then
            SUM <= '0';
        elsif (A = '1' and B = '1' and Cin = '0') then
            SUM <= '0';
        else
            SUM <= '1';
        end if;

        -- CARRY logic using IF/ELSE (behavioral majority logic)
        if ((A = '1' and B = '1') or
            (A = '1' and Cin = '1') or
            (B = '1' and Cin = '1')) then
            Cout <= '1';
        else
            Cout <= '0';
        end if;

    end process;

end Behavioral;
