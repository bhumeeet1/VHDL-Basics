library IEEE;
use IEEE.std_logic_1164.all;

entity tb_and_gate is
end tb_and_gate;

architecture behavior of tb_and_gate is
    component and_gate
        port(a, b : in bit; y : out bit);
    end component;

    signal t_a : bit := '0';
    signal t_b : bit := '0';
    signal t_y : bit;

begin
    uut: and_gate 
	port map (a => t_a, b => t_b, y => t_y);

    stim_proc: process
    begin
        t_a <= '0'; t_b <= '0'; wait for 10 ns;
        t_a <= '0'; t_b <= '1'; wait for 10 ns;
        t_a <= '1'; t_b <= '0'; wait for 10 ns;
        t_a <= '1'; t_b <= '1'; wait for 10 ns;
        wait; 
    end process;
end behavior;