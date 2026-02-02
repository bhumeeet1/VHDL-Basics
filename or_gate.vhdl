library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is
    port(
        a, b : in bit;
        y    : out bit
    );
end or_gate;

architecture logic of or_gate is
begin
    
    y <= '1' when a = '1' else 
         '1' when b = '1' else 
         '0';
end logic;