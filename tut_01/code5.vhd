library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Required for arithmetic operations

entity Adder_Behavioral is
    Port ( A    : in  STD_LOGIC_VECTOR (3 downto 0);
           B    : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin  : in  STD_LOGIC;
           Sum  : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end Adder_Behavioral;

architecture Behavioral of Adder_Behavioral is
    -- Signal to hold the 5-bit result (4 bits sum + 1 bit carry)
    signal temp_result : unsigned(4 downto 0);
begin
    process(A, B, Cin)
    begin
        -- Convert inputs to unsigned, extend to 5 bits to capture carry, and add
        temp_result <= ('0' & unsigned(A)) + ('0' & unsigned(B)) + ("0000" & Cin);
    end process;

    -- Assign lower 4 bits to Sum
    Sum  <= std_logic_vector(temp_result(3 downto 0));
    -- Assign 5th bit to Carry Out
    Cout <= temp_result(4);

end Behavioral;