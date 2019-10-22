library ieee;
USE ieee.std_logic_1164.all;


ENTITY UnidadeDeControle IS
PORT (
	Clock : IN STD_LOGIC;
	Instrucao : IN STD_LOGIC_VECTOR(0 to 9);
	ImedOut : OUT STD_LOGIC;
	ROut : OUT STD_LOGIC_VECTOR (0 to 7);
	RIn : OUT STD_LOGIC_VECTOR (0 to 7));
END UnidadeDeControle;

ARCHITECTURE UnidadeDeControleTeste OF UnidadeDeControle IS
TYPE State_type IS (A,B,C,D,E,F,G,H,I,J,K,L);
SIGNAL estado, prox, prox2 : State_type := A;

BEGIN
PROCESS (Clock )
VARIABLE indice,indice2: integer;
			
BEGIN
	IF (Clock'EVENT AND Clock = '1') THEN
	ROut <= "00000000";
	RIn <= "00000000";
	ImedOut <= '0';
	
	-- indice 1 i indice 2 j
		CASE estado IS
		-- se estiver em A
			WHEN A =>
				IF (Instrucao (0 to 3) = "0000") THEN prox <= B;
				ELSIF (Instrucao (0 to 3) = "0001") THEN prox <= C;
				ELSIF (Instrucao (0 to 3) = "0010")THEN prox <= F;
				ELSIF (Instrucao (0 to 3) = "0011") THEN prox <= F;
				ELSIF (Instrucao (0 to 3) = "0100") THEN prox <= F;
				ELSIF (Instrucao (0 to 3) = "0101") THEN prox <= F;
				ELSIF (Instrucao (0 to 3) = "0110") THEN prox <= I;
				ELSIF (Instrucao (0 to 3) = "0111") THEN prox <= J;
				ELSIF (Instrucao (0 to 3) = "1000") THEN prox <= J;
				ELSIF (Instrucao (0 to 3) = "1001") THEN prox <= J;
				ELSIF (Instrucao (0 to 3) = "1010") THEN prox <= J;
				ELSE prox <= A;
				END IF;
				
				IF (Instrucao (4 to 5) = "00") THEN indice := 0;
				ELSIF (Instrucao (4 to 5) = "01") THEN indice := 1;
				ELSIF (Instrucao (4 to 5) = "10") THEN indice := 2;
				ELSIF (Instrucao (4 to 5) = "11") THEN indice := 3;
				END IF;
				
				IF (Instrucao (6 to 7) = "00") THEN indice2 := 0;
				ELSIF (Instrucao (6 to 7) = "01") THEN indice2 := 1;
				ELSIF (Instrucao (6 to 7) = "10") THEN indice2 := 2;
				ELSIF (Instrucao (6 to 7) = "11") THEN indice2 := 3;
				END IF;
				
				Rout <= "00000000";
				Rin <= "00000000";
				ImedOut <= '0';
				
				
				
				WHEN B =>
					Rout(indice2) <= '1';
					Rin(indice) <= '1';
					prox <= A;
				
				WHEN C =>
					Rout(indice) <= '1';
					Rin(6) <= '1';
					prox <= D;
				
				WHEN D => 
					Rout(indice2) <= '1';
					Rin(indice) <= '1';
					prox <= E;
					
				WHEN E =>
					Rout(6) <= '1';
					Rin(indice2) <= '1';
					prox <= A;
				
				WHEN F =>
					Rout(indice) <= '1';
					Rin(4) <= '1';
					prox <= G;
					
				WHEN G =>
					Rout(indice2) <= '1';
					Rin(5) <= '1';
					prox <= H;
					
				WHEN H =>
					Rout(5) <= '1';
					Rin(indice) <= '1';
					prox <= A;
					
				WHEN I =>
					imedOut <= '1';
					Rin(indice) <= '1';
					prox <= A;
					
				WHEN J =>
					Rout(indice) <= '1';
					Rin(4) <= '1';
					prox <= K;
				
				WHEN K =>
					ImedOut <= '1';
					Rin(5) <= '1';
					prox <= L;
					
				WHEN L =>
					Rout(5) <= '1';
					Rin(indice) <= '1';
					prox <= A;
					
		END CASE;
	END IF;
	
END PROCESS;

PROCESS (Clock )
BEGIN
		estado <= prox;
END PROCESS;




END UnidadeDeControleTeste;