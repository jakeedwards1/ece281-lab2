----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2024 11:31:29 AM
-- Design Name: 
-- Module Name: top_basys3 - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_basys3 is
    Port ( sw : in STD_LOGIC_VECTOR (3 DOWNTO 0);
           btnC : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 DOWNTO 0);
           an : out STD_LOGIC_VECTOR (3 DOWNTO 0));
end top_basys3;

architecture Behavioral of top_basys3 is

    component sevenSegDecoder is
        Port ( 
            i_D : in STD_LOGIC_VECTOR (3 downto 0);
            o_S : out STD_LOGIC_VECTOR (6 downto 0)
            );
            
    end component sevenSegDecoder;


    signal w_7SD_EN_n: std_logic := '0';
    
begin
        
    an(0)   <= w_7SD_EN_n;
    an(1)   <= '1';
    an(2)   <= '1';
    an(3)   <= '1';
    
    sevenSegDecoder_inst : sevenSegDecoder port map(
        i_D => sw,
        o_S => seg
    );   
    
    
    w_7SD_EN_n  <= not btnC;
    
    an  <= (0 => w_7SD_EN_n, others => '1');

end Behavioral;
