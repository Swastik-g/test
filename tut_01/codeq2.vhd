library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        SUM   : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end half_adder;

architecture Behavioral of half_adder is
begin

    process(A, B)
    begin
        -- SUM logic (A XOR B) written behaviorally
        if (A = '0' and B = '0') then
            SUM <= '0';
        elsif (A = '0' and B = '1') then
            SUM <= '1';
        elsif (A = '1' and B = '0') then
            SUM <= '1';
        else
            SUM <= '0';
        end if;

        -- CARRY logic (A AND B) written behaviorally
        if (A = '1' and B = '1') then
            CARRY <= '1';
        else
            CARRY <= '0';
        end if;

    end process;

end Behavioral;
