library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A    : in STD_LOGIC;
        B    : in STD_LOGIC;
        Cin  : in STD_LOGIC;
        Sum  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end full_adder;

architecture Behavioral of full_adder is

    component half_adder
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Sum : out STD_LOGIC;
            Carry : out STD_LOGIC
        );
    end component;

    signal S1, C1, C2 : STD_LOGIC;

begin
    HA1: half_adder port map(A, B, S1, C1);
    HA2: half_adder port map(S1, Cin, Sum, C2);

    Cout <= C1 OR C2; 

end Behavioral;
