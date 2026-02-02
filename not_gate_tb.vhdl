library ieee;
use ieee.std_logic_1164.all;

entity tb_not_gate is
end tb_not_gate;

architecture logic of tb_not_gate is
	component not_gate
    	port(a : in bit;
        	 y: out bit);
    end component;
    
  signal t_a : bit := '0';
  signal t_y : bit;
  
begin

	uut: not_gate port map (a => t_a, y => t_y);

    stim_proc: process
    begin
        t_a <= '0';  wait for 10 ns;
        t_a <= '1';  wait for 10 ns;
        wait; 
    end process;
end logic;