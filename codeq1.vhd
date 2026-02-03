library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates is
    Port (
        a, b      : in  STD_LOGIC;
        and_out   : out STD_LOGIC;
        or_out    : out STD_LOGIC;
        not_out   : out STD_LOGIC;
        nand_out  : out STD_LOGIC;
        nor_out   : out STD_LOGIC;
        xor_out   : out STD_LOGIC;
        xnor_out  : out STD_LOGIC
    );
end logic_gates;

architecture Behavioral of logic_gates is
begin

    process(a, b)
    begin

        -- AND gate in behavioral style
        if (a = '1' and b = '1') then
            and_out <= '1';
        else
            and_out <= '0';
        end if;

        -- OR gate in behavioral style
        if (a = '1' or b = '1') then
            or_out <= '1';
        else
            or_out <= '0';
        end if;

        -- NOT gate in behavioral style
        if (a = '0') then
            not_out <= '1';
        else
            not_out <= '0';
        end if;

        -- NAND gate in behavioral style
        if (a = '1' and b = '1') then
            nand_out <= '0';
        else
            nand_out <= '1';
        end if;

        -- NOR gate in behavioral style
        if (a = '0' and b = '0') then
            nor_out <= '1';
        else
            nor_out <= '0';
        end if;

        -- XOR gate in behavioral style
        if (a /= b) then
            xor_out <= '1';
        else
            xor_out <= '0';
        end if;

        -- XNOR gate in behavioral style
        if (a = b) then
            xnor_out <= '1';
        else
            xnor_out <= '0';
        end if;

    end process;

end Behavioral;
