----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2024 12:03:47 PM
-- Design Name: 
-- Module Name: sevenSegDecoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity sevenSegDecoder_tb is
end sevenSegDecoder_tb;


architecture test_bench of sevenSegDecoder_tb is

component sevenSegDecoder is
    Port ( 
        i_D : in STD_LOGIC_VECTOR (3 downto 0);
        o_S : out STD_LOGIC_VECTOR (6 downto 0)
        );
end component;

signal w_sw : STD_LOGIC_VECTOR(3 downto 0);
signal w_seg : STD_LOGIC_VECTOR(6 downto 0);

begin

    sevenSegDecoder_inst : sevenSegDecoder port map(
        i_D => w_sw,
        o_S => w_seg
    );    

    test_process : process
    begin
        
        w_sw <= x"0"; wait for 10 ns;
            assert w_seg = "1000000" report "bad x0" severity failure;
        w_sw <= x"1"; wait for 10 ns;
            assert w_seg = "1111001" report "bad x0" severity failure;
        w_sw <= x"2"; wait for 10 ns;
            assert w_seg = "0100100" report "bad x0" severity failure;
        w_sw <= x"3"; wait for 10 ns;
            assert w_seg = "0110000" report "bad x0" severity failure;
        w_sw <= x"4"; wait for 10 ns;
            assert w_seg = "0011001" report "bad x0" severity failure;
        w_sw <= x"5"; wait for 10 ns;
            assert w_seg = "0010010" report "bad x0" severity failure;
        w_sw <= x"6"; wait for 10 ns;
            assert w_seg = "0000010" report "bad x0" severity failure;
        w_sw <= x"7"; wait for 10 ns;
            assert w_seg = "1111000" report "bad x0" severity failure;
        w_sw <= x"8"; wait for 10 ns;
            assert w_seg = "0000000" report "bad x0" severity failure;
        w_sw <= x"9"; wait for 10 ns;
            assert w_seg = "0011000" report "bad x0" severity failure;
        w_sw <= x"A"; wait for 10 ns;
            assert w_seg = "0001000" report "bad x0" severity failure;
        w_sw <= x"B"; wait for 10 ns;
            assert w_seg = "0000011" report "bad x0" severity failure;
        w_sw <= x"C"; wait for 10 ns;
            assert w_seg = "0100111" report "bad x0" severity failure;
        w_sw <= x"D"; wait for 10 ns;
            assert w_seg = "0100001" report "bad x0" severity failure;
        w_sw <= x"E"; wait for 10 ns;
            assert w_seg = "0000110" report "bad x0" severity failure;
        w_sw <= x"F"; wait for 10 ns;
            assert w_seg = "0001110" report "bad x0" severity failure;
        
    
    
        wait;
    end process;

end test_bench;
