// ************************* PROCESO PRINCIPAL **********************************

// Configuración: ejecutar en modo estricto

Proceso MenuDinamicDevs
	Definir seleccion Como Entero;
	Repetir
	    Limpiar Pantalla;
		menuPrograma("");
	    Leer seleccion;
		Escribir '';
	    Segun seleccion Hacer
		    1:
				//5
			    Limpiar Pantalla;
			    Escribir '';
			    Escribir 'Ha elegido la opcion 1- BlackJack';
				Escribir "";
				procesoPrincipalBlackjack("");
			2:
				Limpiar Pantalla;
				Escribir '';
				Escribir 'Ha elegido la opcion 2- Metele un gol al DIBU';
				procesoPrincipalMeteleUnGolAlDibu("");
			3:
				Limpiar Pantalla;
				Escribir '';
				Escribir 'Ha elegido la opcion 3- Piedra, papel o tijera';
				Escribir "";
				procesoPrincipalPiedraPapelTijera("");
			4:
				Limpiar Pantalla;
				Escribir '';
				Escribir 'Ha elegido la opcion 4- AHORCADO';
				Escribir '';
				procesoPrincipalAhorcado("");
			5:
				Limpiar Pantalla;
				Escribir '';
				Escribir 'Ha elegido la opcion 5- Consumo de Energía';
				Escribir '';
				Escribir 'Si esta aca es porque necesita saber cuanto gastó de luz';
				Escribir '';
				procesoPrincipalConsumoEnergia("");
			6:
				Limpiar Pantalla;
				Escribir '';
				Escribir 'Ha elegido la opcion 6- Juego de Dardos (Crap) :)';
				Escribir '';
				procesoPrincipalCraps("");
			7:
				logoEquipo("");
			De Otro Modo:
				Escribir 'Se equivocó de opción. Digite nuevamente la opción de 1 a 7';
		FinSegun
	Hasta Que seleccion = 7;
FinProceso
// ************************* FIN PROCESO PRINCIPAL **********************************


// A continuación, se definen todos los subprocesos y funciones 
// que fueron utilizados en el proceso principal para la correcta ejecución.


// ************************* MENÚ **********************************
// subproceso Menú Programa
SubProceso menuPrograma(variable por valor)
	Escribir '	DinamicDevs Games	';
	Escribir '		 Menú		';
	Escribir '-----------------';
	Escribir '1- BlackJack';
	Escribir '2- Metele un gol al DIBU';
	Escribir '3- Piedra, Papel o Tijera';
	Escribir '4- Ahorcado';
	Escribir '5- ¿Llevas mucho jugando? Calcula tu consumo de luz...';
	Escribir '6- Craps';
	Escribir '7- Salir';
	Escribir 'Ingrese el NUMERO de juego que desee';
FinSubProceso
// ************************* FIN MENÚ **********************************


// ************************* LOGO EQUIPO **********************************
// subproceso Logo Equipo
SubProceso logoEquipo(variable por valor)
	Limpiar Pantalla;
	Escribir "________                                 _____      ________                    ";
	Escribir "___  __ \____  ______________ _______ ______(_)________  __ \_______   _________";
	Escribir "__  / / /_  / / /_  __ \  __ `/_  __ `__ \_  /_  ___/_  / / /  _ \_ | / /_  ___/";
	Escribir "_  /_/ /_  /_/ /_  / / / /_/ /_  / / / / /  / / /__ _  /_/ //  __/_ |/ /_(__  ) ";
	Escribir "/_____/ _\__, / /_/ /_/\__,_/ /_/ /_/ /_//_/  \___/ /_____/ \___/_____/ /____/  ";
	Escribir "/____/                                                                  ";
	Escribir "";
	Escribir "                           ______________";
	Escribir "                          /************* /";
	Escribir "                         /************* /";
	Escribir "                        /************* /";
	Escribir "                       /******************* /";
	Escribir "                      /******************* /";
	Escribir "                            /************ /";
	Escribir "                           /*********** /";
	Escribir "                          /********** /";
	Escribir "                         /********* /";
	Escribir "                        /******** /";
	Escribir "                       /******* /";
	Escribir "                      /****** /";
	Escribir "                     /***** /";
	Escribir "                    /**** /";
	Escribir "                   /*** /";
	Escribir "                  /** /";
	Escribir "                 /* /";
	Escribir "                /*/";
FinSubProceso
// ************************* FIN LOGO EQUIPO **********************************


// ************************* DADOS/CRAPS **********************************
// subproceso Dados / Craps usado en el menú del proceso principal
SubProceso procesoPrincipalCraps(variable por valor)
	Definir puntos, dado1, dado2, suma Como Entero; 
	Definir gano, salioCrap Como Logico; 
	Definir eleccion Como Caracter; 
	Repetir 
		Limpiar Pantalla; 
		puntos <- 0; 
		gano <- Falso; 
		salioCrap <- Falso; 
		Escribir "BIENVENIDO AL JUEGO CRAPS";
		Escribir "REALIZADO POR NOE :)";
		Escribir "************************************************";
		Escribir " "; //salto de linea
		Repetir 
			Escribir "Pulse cualquier tecla para tirar los dados"; 
			Esperar Tecla; 
			dado1 <- Aleatorio(1, 6);
			dado2 <- Aleatorio(1, 6); 
			suma <- dado1 + dado2; 
			Escribir "Dado 1: ", dado1, ", Dado 2: ", dado2, ", Suma: ", suma; 
			Si puntos <- 0 Entonces 
				Si suma <- 7 o suma <- 11 Entonces
					gano <- Verdadero; 
				SiNo 
					Si suma <- 2 o suma <- 3 o suma <- 12 Entonces 
						salioCrap <- Verdadero; 
					SiNo puntos <- puntos+ 1; 
					Fin Si 
				Fin Si 
			SiNo 
				Si suma <- 2 o suma <- 3 o suma <- 12 o suma <- 7 Entonces 
					salioCrap <- Verdadero; 
				SiNo puntos <- puntos+ 1; 
				Fin Si 
			Fin Si 
		Hasta Que puntos = 7 o gano o salioCrap;
		Escribir " "; //salto de linea
		Escribir "************************************************";
		Si salioCrap Entonces 
			Escribir "Lo sentimos ha perdido el juego."; 
			Escribir "************************************************";
			Escribir " ";
		SiNo 
			Escribir "Felicidades!!! Ha ganado el juego.";
			Escribir "************************************************";
			Escribir " ";
		Fin Si 
		Repetir 
			Escribir "Desea jugar de nuevo? S/N" Sin Saltar; 
			leer eleccion; 
			eleccion <- Mayusculas(eleccion); 
		Hasta Que eleccion = "N" o eleccion = "S";
		Escribir "************************************************";
		Escribir " ";
	Hasta Que eleccion = "N";
FinSubProceso
// ************************* FIN DADOS/CRAPS **********************************


// ************************* PIEDRA PAPEL O TIJERA **********************************
// Subproceso Piedra Papel o Tijera que se usa en el menú del proceso principal
SubProceso procesoPrincipalPiedraPapelTijera(variable Por Valor)
	Definir partida, v1, v2, jugarNuevamente Como Entero;
	Repetir
		partida <- 1;
		Mientras partida == 1 Hacer
			Escribir "Jugador 1 Elige tu opcion: [1: Piedra, 2: Papel, 3: Tijera]";
			Leer v1;
			Escribir "Jugador 2 Elige tu opcion: [1: Piedra, 2: Papel, 3: Tijera]";
			leer v2;
			Si (v1 <> v2) Entonces
				si (v1==1 y v2==3) o (v1==2 y v2==1) o (v1==3 y v2==2) Entonces
					Escribir "Gana el jugador 1!";
					partida <-0;
				SiNo
					si (v2==1 y v1==3) o (v2==2 y v1==1) o (v2==3 y v1==2)Entonces
						Escribir "¡¡ Gana el jugador 2 !!";
						partida <-0;
					FinSi
				FinSi
			SiNo
				Limpiar Pantalla;
				Escribir "";
				Escribir "¡¡ Empate !!";
				Escribir "";
			FinSi
		FinMientras
		Escribir "";
		Escribir "¿Quiere volver a jugar? Presione 1 para continuar o cualquier número para salir al menú principal.";
		Leer jugarNuevamente;
		Limpiar Pantalla;
	Hasta Que jugarNuevamente <> 1
FinSubProceso
// ************************* FIN PIEDRA PAPEL O TIJERA **********************************


// ************************* PENALES **********************************
// Subproceso Metele Un Gol A Dibu (Penales) que se usa en el menú del proceso principal
SubProceso procesoPrincipalMeteleUnGolAlDibu(variable Por Valor)
	Definir goles Como Entero;
	Definir atajadas Como Entero;
	Definir arqueroAtajo Como Logico;
	Definir tiro Como Entero;
	Definir arquero Como Entero;
	Definir jugar Como Cadena;
	goles <- 0;
	atajadas <- 0; // contador numero de goles
	tiro <- 0; // contador de atajadas
	arquero <- 0; // opcion de tiro
	arqueroAtajo <- Falso; // movimiento del arquero
	jugar <- ''; // si el arquero atajo o no.
	Repetir // opcion de salir
		Limpiar Pantalla;
		Escribir 'Número de goles: ', goles;
		Escribir 'El DIBU te atajó: ', atajadas;
		Escribir '___________________________________________________________';
		Escribir '||-------------------------------------------------------||';
		Escribir '||                                                       ||';
		Escribir '||                     =======_\                         ||';
		Escribir '||                    | ~   ~  =|                        ||';
		Escribir '||                   (| O   O   |)                       ||';
		Escribir '||            __)\     \_´--´__/     /(__                ||';
		Escribir '||           |___/[[[[[|||||||||]]]]]\___/               ||';
		Escribir '||                      ||***||                          ||';
		Escribir '||                      |||||||                          ||';
		Escribir '||---------------------/#######\-------------------------||';
		Escribir '||                    /##|   |##\                        ||';
		Escribir '||                    _//      \\_                       ||';
		Escribir '||                  /___|      |___\                     ||';
		Escribir '';
		Escribir '            1. Izquierda | 2. Centro | 3. Derecha';
		Leer tiro;
		Si (tiro<0 O tiro>3) Entonces
			Escribir 'Solo son validos numeros del 1 al 3 para patear. Presiona cualquier tecla para continuar. Presionar la tecla N para salir'; // condicional para validar que sólo sean los numeros 1 (izquierda), 2 (centro) y 3 (derecha) para patear
			Leer jugar;
		FinSi
		arquero <- azar(3)+1;
		Si tiro==1 Y arquero==1 Entonces // movimiento aleatorio del arquero. 1 izquierda, 2 centro, 3 derecha
			atajadas <- atajadas+1; // si patea a la izquierda y el arquero se mueve a la izquierda: Atajada 
			arqueroAtajo <- Verdadero; // cuenta las atajadas
			Limpiar Pantalla; // arquero atapó
			Escribir 'Número de goles: ', goles;
			Escribir 'El DIBU te atajó: ', atajadas;
			Escribir '___________________________________________________________';
			Escribir '-----------------------------------------------------------';
			Escribir '||       ______    ___                                    ||';
			Escribir '||      |  _____| |   |                 /_=======_\       ||';
			Escribir '||      |  |____  |   |                 |  \   /  |       ||';
			Escribir '||      |  |____| |   |                (|  O   O  |)      ||';
			Escribir '||      |  |____  |  _|____             _\_  U  _/_      ||';
			Escribir '||      |_______| |________|          / /||||||||\ \      ||';
			Escribir '||       _______                     | | |||***|| | |     ||';
			Escribir '||     /        |                     \ \||||||||/ /      ||';
			Escribir '||---/_____/|   |-------------------- [ ]/#######\[ ]-----||';
			Escribir '||          |   |                       /##|   |##\       ||';
			Escribir '||      ____|   |____                   _//      \\_      ||';
			Escribir '||    |              |                /___|      |___\    ||';
			Escribir '||    |______________|                                    ||';
			Escribir '';
		FinSi
		Si tiro==1 Y arquero==2 Entonces
			Limpiar Pantalla; // si patea a la izquierda y el arquero se queda en el centro: Gol 
			goles <- goles+1;
			Escribir 'Número de goles: ', goles; // cuenta los goles
			Escribir 'El DIBU te atajó: ', atajadas;
			Escribir '___________________________________________________________';
			Escribir '-----------------------------------------------------------';
			Escribir '||                                                       ||';
			Escribir '||                        /_=======_\                    ||';
			Escribir '||                        |         |                    ||';
			Escribir '||    .~:´:¨~.           (|  X   X  |)                   ||';
			Escribir '||   / ,\___/, \           \_  O  _/                     ||';
			Escribir '||  | __/   \__ |       / /||||||||\ \                   ||';
			Escribir '||   \,_\___/,_/       / / |||***|| \ \                  ||';
			Escribir '||    ¨~:___:~¨      /   | |||||||| |    \               ||';
			Escribir '||                   \___/ /#######\ \___/               ||';
			Escribir '||                        /##|   |##\                    ||';
			Escribir '||                       _//      \\_                    ||';
			Escribir '||---------------------/___|------|___\------------------||';
			Escribir '||    _______     ________  ________  _________          ||';
			Escribir '||   /  /______\ |  |___  ||  |___  | |  |___  ||  |     ||';
			Escribir '||  |  |   ____  |  |   | ||  |   | | |  |   | ||  |     ||';
			Escribir '||  |  |  |___ | |  |   | ||  |   | | |  |   | ||  |     ||';
			Escribir '||  |  |_____| | |  |___| ||  |___| | |  |___| ||  |____ ||';
			Escribir '     \_________| |________||________| |________||_______|||';
			Escribir '';
			Esperar 2 Segundos;
		FinSi
		Si tiro==1 Y arquero==3 Entonces
			Limpiar Pantalla; // si patea a la izquierda y el arquero se mueve a la derecha: Gol 
			goles <- goles+1;
			Escribir 'Número de goles: ', goles; // cuenta los goles
			Escribir 'El DIBU te atajó: ', atajadas;
			Escribir '________________________________________________________________';
			Escribir '------------------------------------------------ _--___.--------';
			Escribir '||                                              ( (/  /       ||';
			Escribir '||                                   /_=====_\  \  __/        ||';
			Escribir '||                                  / X   X  /) / /           ||';
			Escribir '||   .~:´:¨~.                      L  O    / / /              ||';
			Escribir '||  / ,\___/, \                  / ///////////                ||';
			Escribir '|| | __/   \__ |                | | //***//                   ||';
			Escribir '||  \,_\___/,_/                 [ ]///////                    ||';
			Escribir '||   ¨~:___:~¨                   /######/                     ||';
			Escribir '||     ________   ________     /##//##/ ________  ___         ||';
			Escribir '||   /  /______\ |  |___  |    //  //  |  |___  | |	|        ||';
			Escribir '||  |  |   ____  |  |   | |   /|  /|   |  |   | | |  |        ||';
			Escribir '||  |  |  |___ | |  |   | |   \/  \/   |  |   | | |  |        ||';
			Escribir '||  |  |_____| | |  |___| |            |  |___| | |  |_____   ||';
			Escribir '     \_________| |________|            |________| |________|  ||';
			Escribir '';
			Esperar 2 Segundos;
		FinSi
		Si tiro==2 Y arquero==1 Entonces
			Limpiar Pantalla; // si patea al centro y el arquero se mueve a la izquierda: Gol
			goles <- goles+1;
			Escribir 'Número de goles: ', goles;
			Escribir 'Número de atajadas: ', atajadas;
			Escribir '_____________________________________________________________';
			Escribir '-------------------------------------------------------------';
			Escribir '||  \   \) ) _____                                         ||';
			Escribir '||   \__  //_=====_\                                       ||';
			Escribir '||     \ \(\   X  X \                                      ||';
			Escribir '||      \ \ \   O  _/           .~:´:¨~.                   ||';
			Escribir '||        \\\\\\\\\\ \         / ,\___/, \                 ||';
			Escribir '||          \\***\\ | |       | __/   \__ |                ||';
			Escribir '||           \\\\\\\[  ]       \,_\___/,_/                 ||';
			Escribir '||            \######\          ¨~:___:~¨                  ||';
			Escribir '||    _______  \##\ \##\  ________   ________   ___        ||';
			Escribir '||  /  /______\  \\   \\ |  |___  | |  |___  | |  |        ||';
			Escribir '|| |  |   ____    |\   |\|  |   | | |  |   | | |  |        ||';
			Escribir '|| |  |  |___ |   \/   \/|  |   | | |  |   | | |  |        ||';
			Escribir '|| |  |_____| |          |  |___| | |  |___| | |  |_____   ||';
			Escribir '||  \_________|          |________| |________| |________|  ||';
			Escribir '';
			Esperar 2 Segundos;
		FinSi
		Si tiro==2 Y arquero==2 Entonces
			Limpiar Pantalla; // si patea al centro y el arquero se queda en el centro: Atajada
			Escribir 'Número de goles: ', goles;
			Escribir 'El DIBU te atajó: ', atajadas;
			Escribir '___________________________________________________________';
			Escribir '----______----___-------------------------------------------';
			Escribir '|| |  _____| |   |                                        ||';
			Escribir '|| |  |____  |   |       /_=======_\                      ||';
			Escribir '|| |  |____| |   |       |  \   /  |                      ||';
			Escribir '|| |  |____  |  _|____  (|  O   O  |)                     ||';
			Escribir '|| |_______| |________|  _\_  U  _/_                      ||';
			Escribir '||     _______         / /||||||||\ \                     ||';
			Escribir '||   /        |        | ||||***|| | |                    ||';
			Escribir '|| /_____/|   |      | \ \||||||||/ /                     ||';
			Escribir '||--------|   |--------[ ]/#######\[ ]--------------------||';
			Escribir '||   _____|   |____      /##|   |##\                      ||';
			Escribir '||  |              |    _//      \\_                      ||';
			Escribir '||  |______________|   /___|      |___\                   ||';
			Escribir '';
			atajadas <- atajadas+1;
			arqueroAtajo <- Verdadero; // cuenta las atajadas
		FinSi
		Si tiro==2 Y arquero==3 Entonces
			Limpiar Pantalla; // si patea al centro y el arquero se mueve a la derecha: Gol
			goles <- goles+1;
			Escribir 'Número de goles: ', goles; // cuenta los goles
			Escribir 'El DIBU te atajó: ', atajadas;
			Escribir '_________________________________________________________________';
			Escribir '------------------------------------------------------_--__----- ';
			Escribir '||                                          _____ ( (/   /     ||';
			Escribir '||                                        /_=====_\\  __/      ||';
			Escribir '||                                       / X  X  /)/ /         ||';
			Escribir '||                       .~:´:¨~.       \_  O   / / /          ||';
			Escribir '||                     / ,\___/, \   / ///////////             ||';
			Escribir '||                    | __/   \__ | | | ///***//               ||';
			Escribir '||                     \,_\___/,_/   [ ]///////                ||';
			Escribir '||                      ¨~:___:~¨    /######/                  ||';
			Escribir '||     ________   ________         /##/ /##/________  ___      ||';
			Escribir '||   /  /______\ |  |___  |        //   // |  |___  | |  |     ||';
			Escribir '||  |  |   ____  |  |   | |       /|   /|  |  |   | | |  |     ||';
			Escribir '||  |  |  |___ | |  |   | |       \/   \/  |  |   | | |  |     ||';
			Escribir '||  |  |_____| | |  |___| |                |  |___| | |  |_____||';
			Escribir '     \_________| |________|                |________| |________||';
			Escribir '';
			Esperar 2 Segundos;
		FinSi
		Si tiro==3 Y arquero==1 Entonces
			Limpiar Pantalla; // si patea a la derecha y el arquero se mueve a la izquierda: Gol
			goles <- goles+1;
			Escribir 'Número de goles: ', goles; // cuenta los goles
			Escribir 'El DIBU te atajó: ', atajadas;
			Escribir '_____________________________________________________________';
			Escribir '-------------------------------------------------------------';
			Escribir '||  \   \) ) _____                                         ||';
			Escribir '||   \__  //_=====_\                                       ||';
			Escribir '||     \ \(\   X  X \                                      ||';
			Escribir '||      \ \ \   O  _/                         .~:´:¨~.     ||';
			Escribir '||        \\\\\\\\\\ \                       / ,\___/, \   ||';
			Escribir '||          \\***\\ | |                     | __/   \__ |  ||';
			Escribir '||           \\\\\\\[  ]                     \,_\___/,_/   ||';
			Escribir '||            \######\                        ¨~:___:~¨    ||';
			Escribir '||    _______  \##\ \##\  ________   ________   ___        ||';
			Escribir '||  /  /______\  \\   \\ |  |___  | |  |___  | |  |        ||';
			Escribir '|| |  |   ____    |\   |\|  |   | | |  |   | | |  |        ||';
			Escribir '|| |  |  |___ |   \/   \/|  |   | | |  |   | | |  |        ||';
			Escribir '|| |  |_____| |          |  |___| | |  |___| | |  |_____   ||';
			Escribir '||  \_________|          |________| |________| |________|  ||';
			Escribir '';
			Esperar 2 Segundos;
		FinSi
		Si tiro==3 Y arquero==2 Entonces
			Limpiar Pantalla; // si patea a la derecha y el arquero se queda en el centro: Gol
			goles <- goles+1;
			Escribir 'Número de goles: ', goles;
			Escribir 'El DIBU te atajó: ', atajadas;
			Escribir '___________________________________________________________';
			Escribir '-----------------------------------------------------------';
			Escribir '||                                                       ||';
			Escribir '||                        /_=======_\                    ||';
			Escribir '||                        |         |                    ||';
			Escribir '||                       (|  X   X  |)         .~:´:¨~.  ||';
			Escribir '||                         \_  O  _/          / ,\___/, \||';
			Escribir '||                      / /||||||||\ \       | __/   \__ ||';
			Escribir '||                     / / |||***|| \ \       \,_\___/,_/||';
			Escribir '||                   /   | |||||||| |    \     ¨~:___:~¨ ||';
			Escribir '||                   \___/ /#######\ \___/               ||';
			Escribir '||                        /##|   |##\                    ||';
			Escribir '||                       _//      \\_                    ||';
			Escribir '||---------------------/___|------|___\------------------||';
			Escribir '||    _______     ________  ________  _________          ||';
			Escribir '||   /  /______\ |  |___  ||  |___  | |  |___  ||  |     ||';
			Escribir '||  |  |   ____  |  |   | ||  |   | | |  |   | ||  |     ||';
			Escribir '||  |  |  |___ | |  |   | ||  |   | | |  |   | ||  |     ||';
			Escribir '||  |  |_____| | |  |___| ||  |___| | |  |___| ||  |____ ||';
			Escribir '     \_________| |________||________| |________||_______|||';
			Escribir '';
			Esperar 2 Segundos;
		FinSi
		Si tiro==3 Y arquero==3 Entonces
			Limpiar Pantalla; // si patea a la derecha y el arquero se mueve a la derecha: Atajada
			Escribir 'Número de goles: ', goles;
			Escribir 'El DIBU te atajó: ', atajadas;
			Escribir '___________________________________________________________';
			Escribir '----______----___-------------------------------------------';
			Escribir '|| |  _____| |   |                                        ||';
			Escribir '|| |  |____  |   |                          /_=======_\   ||';
			Escribir '|| |  |____| |   |                          |  \   /  |   ||';
			Escribir '|| |  |____  |  _|____                     (|  O   O  |)  ||';
			Escribir '|| |_______| |________|                     _\_  U  _/_   ||';
			Escribir '||     _______                            / /||||||||\ \  ||';
			Escribir '||   /        |                           | ||||***|| | | ||';
			Escribir '|| /_____/|   |      |                    \ \||||||||/ /  ||';
			Escribir '||--------|   |---------------------------[ ]/#######\[ ] ||';
			Escribir '||   _____|   |____                         /##|   |##\   ||';
			Escribir '||  |              |                       _//      \\_   ||';
			Escribir '||  |______________|                      /___|      |___\||';
			Escribir '';
			atajadas <- atajadas+1;
			arqueroAtajo <- Verdadero; // cuenta las atajadas
		FinSi
		Si arqueroAtajo==Verdadero Entonces
			Escribir 'Perdiste, el DIBU atajó el penal'; // si el arquero atajó entonces le pregunta al usuario si desea seguir jugando
			Escribir '¿Querés seguir jugando? Si es así, presiona cualquier tecla, Sino presiona: N';
			Leer jugar;
			arqueroAtajo <- Falso;
			Limpiar Pantalla; // reseteo la variable
		FinSi
	Hasta Que jugar=='n' O jugar=='N';
FinSubProceso
// ************************* FIN PENALES **********************************


// ************************* BLACKJACK **********************************
// subproceso Blackjack que es llamado en el menú del proceso principal
SubProceso procesoPrincipalBlackjack(variable Por Valor)
	Definir n,n1,n2, opc, banca , As, jugarNuevamente como enteros;
	Definir gana, pierde Como Logico;
	Repetir
		gana<-Falso;
		pierde<-Falso;
		n1<-azar(12)+1;
		n2<-azar(12)+1;
		Escribir "*******************";
		Escribir "***  BlackJack! ***";
		Escribir "*******************";
		Escribir "";
		Escribir 'Bienvenido a Blackjack!!";
		Escribir "Sus Cartas son: ";
		carta(n1);
		carta(n2);
		Si ((n1 = 11) o (n1 =12) o (n1=13)) Entonces
			n1 <- 10;
			Si ((n2 = 11) o (n2 =12) o (n2=13)) Entonces
				n2 <- 10;
			FinSi
		SiNo
			Si ((n2 = 11) o (n2 =12) o (n2=13)) Entonces
				n2 <- 10;
			FinSi
		FinSi
		Si (n1=1) Entonces
			valorAs(As);
			n1 <- As;
		SiNo
			Si (n2=1) Entonces
				valorAs(As);
				n2 <- As;
			FinSi
		FinSi
		n<- n1 + n2;
		Repetir
			Escribir "Tiene: ",n;
			Escribir "Desea una carta mas?: ";
			Escribir "Ingresa 1 para si";
			Escribir "Ingresa 2 para no";
			Leer opc;
			Si opc = 1 Entonces
				n2 <- azar(12)+1;
				carta(n2);
				Si ((n2 = 11) o (n2 =12) o (n2=13)) Entonces
					n2<-10;
				FinSi
				n<- n+n2;
			FinSi
		Hasta Que n>21 o opc == 2
		Limpiar Pantalla;
		Escribir "Usted saco: ", n;
		Si n>21 Entonces
			Escribir "La banca saco: ";
			n1<- azar(12)+1;
			n2<- azar(12)+1;
			carta(n1);
			carta(n2);
			Si ((n1 = 11) o (n1 =12) o (n1=13)) Entonces
				n1 <- 10;
				Si ((n2 = 11) o (n2 =12) o (n2=13)) Entonces
					n2 <- 10;
				FinSi
			SiNo
				Si ((n2 = 11) o (n2 =12) o (n2=13)) Entonces
					n2 <- 10;
				FinSi
			FinSi
			banca <- n1 + n2;
			Escribir "La banca saco: ",banca;
			Escribir "Tiene mas de 21 puntos, Ud ha PERDIDO!!!";
		SiNo
			Escribir "La banca juega!";
			n1<- azar(12)+1;
			n2<- azar(12)+1;
			carta(n1);
			carta(n2);
			Si ((n1 = 11) o (n1 =12) o (n1=13)) Entonces
				n1 <- 10;
				Si ((n2 = 11) o (n2 =12) o (n2=13)) Entonces
					n2 <- 10;
				FinSi
			SiNo
				Si ((n2 = 11) o (n2 =12) o (n2=13)) Entonces
					n2 <- 10;
				FinSi
			FinSi
			banca <- n1 + n2;
			Mientras banca < n Hacer
				n2<-azar(12)+1;
				carta(n2);
				Si n2 = 11 o n2 =12 o n2=13 Entonces
					n2<-10;
				FinSi
				banca <- banca +n2;
			FinMientras
			Escribir "La banca saco: ",banca;
			Si (n >banca o banca>21) y n<=21  Entonces
				Escribir "Usted GANÓ esta mano";
			SiNo
				Si n = banca Entonces
					Escribir "Es un Empate!!";
				SiNo
					Si banca <= 21 Entonces
						Escribir "La banca gana, PERDIÓ esta mano";
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "";
		Escribir "¿Quiere volver a jugar? Presione 1 para continuar o cualquier número para salir al menú principal.";
		Leer jugarNuevamente;
		Limpiar Pantalla;
	Hasta Que jugarNuevamente <> 1
FinSubProceso

SubProceso carta(n)
	Segun n Hacer
		1:
			Escribir "________________";
			Escribir "|      ###     |";
			Escribir "|     #   #    |";
			Escribir "|    #     #   |";
			Escribir "|    #     #   |";
			Escribir "|   # ##### #  |";
			Escribir "|   #       #  |";
			Escribir "|  #         # |";
			Escribir "|  #         # |";
			Escribir "|______________|";
		2:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|  #           |";
			Escribir "|  #           |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		3:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		4:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|______________|";
		5:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #           |";
			Escribir "|  #           |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		6:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #           |";
			Escribir "|  #           |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		7:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|______________|";
		8:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		9:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  ##########  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		11:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|           #  |";
			Escribir "|          ##  |";
			Escribir "|          ##  |";
			Escribir "|  ########    |";
			Escribir "|______________|";
		12:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  ##########  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  #        #  |";
			Escribir "|  #     #  #  |";
			Escribir "|  #       ##  |";
			Escribir "|  ##########  |";
			Escribir "|______________|";
		13:
			Escribir "________________";
			Escribir "|              |";
			Escribir "|  #       #   |";
			Escribir "|  #     #     |";
			Escribir "|  #   #       |";
			Escribir "|  # #         |";
			Escribir "|  #   #       |";
			Escribir "|  #     #     |";
			Escribir "|  #       #   |";
			Escribir "|______________|";
		10:
			Escribir "________________";
			Escribir "|              |";
			Escribir "| #  ######### |";
			Escribir "| #  #       # |";
			Escribir "| #  #       # |";
			Escribir "| #  #       # |";
			Escribir "| #  #       # |";
			Escribir "| #  #       # |";
			Escribir "| #  ######### |";
			Escribir "|______________|";
	FinSegun
FinSubProceso

SubProceso valorAs(As Por Referencia)
	Escribir Sin Saltar "Escriba el valor que elija para el As (1 o 11): ";
	Leer As;
FinSubProceso
// ************************* FIN BLACKJACK **********************************


// *************************** SUBPROCESOS AHORCADO ********************************
// subproceso Ahorcado que es llamado en el menú en el proceso principal
SubProceso procesoPrincipalAhorcado(variabe Por Valor)
	Definir palabras Como Cadena;
	Definir i, j, k, mostrarIndice, vidas, jugarNuevamente Como Entero;
	Dimensionar palabras(20,2);
	Repetir
		// Ejemplo de matriz: ["Manteca", "026"] --> Palabra actual: "M_n___a"
		rellenarPalabras(palabras); // Matriz de palabras: Primer Elemento: Palabra , //Segundo Elemento: Indices de letras visibles
		// Relleno las letras visibles iniciales de cada palabra
		rellenarLetrasVisibles(palabras);
		// Palabra a mostrar:
		mostrarIndice <- Aleatorio(0,19);
		vidas <- 8;
		Escribir 'Adivinar la palabra 'Sin Saltar;
		adivinarPalabra(vidas,mostrarIndice,palabras);
		Si vidas>0 Entonces
			Escribir 'Felicidades! Palabra adivinada:', escribirPalabra(palabras[mostrarIndice,0],palabras[mostrarIndice,1]);
		SiNo
			Escribir 'tus vidas se han acabado! :/, la palabra a adivinar era:', palabras[mostrarIndice,0];
		FinSi
		Escribir "";
		Escribir "¿Quiere volver a jugar? Presione 1 para continuar o cualquier número para salir al menú principal.";
		Leer jugarNuevamente;
		Limpiar Pantalla;
	Hasta Que jugarNuevamente <> 1
FinSubProceso

SubAlgoritmo rellenarPalabras(palabras Por Referencia)
	palabras[0,0]<-'Manteca';
	palabras[1,0]<-'Galletas';
	palabras[2,0]<-'Milanesas';
	palabras[3,0]<-'Abandonara';
	palabras[4,0]<-'Presidente';
	palabras[5,0]<-'Resultado';
	palabras[6,0]<-'Programador';
	palabras[7,0]<-'Transporte';
	palabras[8,0]<-'Relaciones';
	palabras[9,0]<-'Importante';
	palabras[10,0]<-'Endometrio';
	palabras[11,0]<-'Torticolis';
	palabras[12,0]<-'Adaptacion';
	palabras[13,0]<-'Lenguaje';
	palabras[14,0]<-'Distrofia';
	palabras[15,0]<-'Entrevista';
	palabras[16,0]<-'Herencia';
	palabras[17,0]<-'Plaguicida';
	palabras[18,0]<-'Dirigente';
	palabras[19,0]<-'Residencia';
FinSubAlgoritmo

SubAlgoritmo rellenarLetrasVisibles(palabras Por Referencia)
	Definir j, k Como Entero;
	Definir tamanioPalabra Como Entero;
	Para j<-0 Hasta 19 Hacer
		tamanioPalabra <- Longitud(palabras[j,0])-1;
		// Relleno aleatoriamente las letras visibles iniciales
		palabras[j,1]<- "0";
	FinPara
FinSubAlgoritmo

// Escribe la palabra en base a los indices almacenados hasta el momento en la matriz
SubAlgoritmo palabraActual <- escribirPalabra(palabra,indices)
	Definir i Como Entero;
	Definir palabraActual Como Cadena;
	palabraActual <- '';
	Para i<-0 Hasta Longitud(palabra)-1 Hacer
		Si indiceEsVisible(i,indices) Entonces
			palabraActual <- Concatenar(palabraActual,Subcadena(palabra,i,i));
		SiNo
			palabraActual <- Concatenar(palabraActual,'_');
		FinSi
	FinPara
FinSubAlgoritmo

// Funcion utilizada para retornar los indices que coincidan en base a una letra ingresada
SubAlgoritmo indices <- devolverIndices(letra,palabra)
	Definir indices Como Cadena;
	Definir i Como Entero;
	indices <- '';
	Para i<-0 Hasta Longitud(palabra)-1 Hacer
		Si Subcadena(palabra,i,i) == letra Entonces
			indices <- Concatenar(indices,ConvertirATexto(i));
		FinSi
	FinPara
FinSubAlgoritmo

// Funcion utilizada para escribir la Palabra, en base a un indice dado pregunta sobre los indices almacenados en la matriz
SubAlgoritmo visible <- indiceEsVisible(indice,indices)
	Definir visible Como Logico;
	Definir i Como Entero;
	Definir indiceActual Como Entero;
	// Escribir "indices:,", indices;
	visible <- falso;
	Para i<-0 Hasta Longitud(indices) Hacer
		indiceActual <- ConvertirANumero(Subcadena(indices,i,i));
		Si indiceActual == indice Entonces
			visible <- Verdadero;
		FinSi
	FinPara
	// Escribir "Indice:", indice, " Es visible:, ", visible;
FinSubAlgoritmo

// funcion recursiva
SubAlgoritmo adivinarPalabra(vidas Por Referencia,mostrarIndice,palabras)
	Definir letra Como Cadena;
	// Si tengo o vidas o aun no complete la palabra sigo intentando:
	Definir indicesRetornados Como Cadena;
	imprimirMunieco(vidas);
	// ------------------------------------------------------------------------------
	Escribir 'Adivinar: ', escribirPalabra(palabras[mostrarIndice,0],palabras[mostrarIndice,1]);
	Escribir 'Escriba una letra (solamente letra minuscula)';
	Leer letra;
	Si Longitud(letra)>1 Entonces
		Escribir 'Ha escrito mas de una letra, -1 vidas';
		vidas <- vidas-1;
		Escribir 'Vidas actuales:', vidas;
	FinSi
	Si Longitud(letra)<=1 Entonces
		// Pregunto si la letra ingresada coincide en algun indice, caso afirmativo, devolvera dichos indices.
		indicesRetornados <- devolverIndices(letra,palabras[mostrarIndice,0]);
		Si Longitud(indicesRetornados)<1 Entonces
			Escribir 'La letra ingresada no coincide con ninguna letra de la palabra a adivinar';
			vidas <- vidas-1;
		SiNo
			palabras[mostrarIndice,1]<-Concatenar(palabras[mostrarIndice,1],indicesRetornados);
		FinSi
	FinSi
	Escribir 'Vidas actuales:', vidas, ' -- 'Sin Saltar;
	// Caso recursivo sigo preguntando
	Si vidas>0 Y escribirPalabra(palabras[mostrarIndice,0],palabras[mostrarIndice,1])<>palabras[mostrarIndice,0] Entonces
		adivinarPalabra(vidas,mostrarIndice,palabras);
	SiNo
		Escribir '---------------------------------'; // Caso base, dejo de llamar la funcion
	FinSi
FinSubAlgoritmo

SubAlgoritmo imprimirMunieco(vidas)
	Escribir "";
	Escribir "La horca!!!";
	Escribir "";
	Segun vidas Hacer
		8:
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
		7:
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "_________";
		6:
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "_________";
		5:
			Escribir "------";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "_________";
		4:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  ";
			Escribir "|  ";
			Escribir "_________";
		3:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|";
			Escribir "|";
			Escribir "_________";
			
		2:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|\";
			Escribir "|";
			Escribir "_________";
		1:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|\";
			Escribir "|  / ";
			Escribir "_________";
		0:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|\";
			Escribir "|  / \";
			Escribir "_________";
	FinSegun
	Escribir "";
FinSubAlgoritmo
// *************************** FIN SUBPROCESOS AHORCADO ********************************


// ************************* CONSUMO DE ENERGÍA **********************************
// Proceso Principal Consumo Energía llama a los métodos del juego. Éste es usado
// en el menú del juego
SubProceso procesoPrincipalConsumoEnergia(variable por valor)
	Definir consumo, precioKw Como Real;
	Definir cantidadDias, anio, febrero, calendario, jugarNuevamente Como Entero;
	Definir mes Como Caracter;
	Dimension calendario[6,6];
	Escribir "********************************************************************************************************************************************************";
	Escribir "Bienvenido! este es un programa que le permitirá calcuar el valor a pagar conforme el consumo de energía que ha tenido durante un mes y año determiando.";
	Escribir "********************************************************************************************************************************************************";
	Escribir '';
	Repetir
		// Pedimos al usuario que ingrese el año sobre el cual se quiere hacer el cálculo.
		pedirAnio(anio);
		// Determinamos si el año ingresado es bisiesto o no
		febrero <- calculoDiasFebrero(anio);
		// Pedimos al usuario que ingrese el nombre del mes a calcular
		pedirMes(mes);
		// Vamos a calcular la cantida de días que contiene el mes ingresado por el usuario
		cantidadDias <- calculoDias(mes, febrero);
		// Pedimos al usuario que ingrese el precio del KW
		Escribir "Ingrese el precio del KW: ";
		Leer precioKw;
		// Registramos el consumo con los datos que vaya ingresando el usuario
		RegistrarConsumoDiario(consumo);
		// Mostramos datos de consumo por día y el total a pagar
		mostrarDatos(consumo, cantidadDias, precioKw, calendario, mes, anio);
		Escribir "¿Quiere realizar otro calculo? Presione 1 para continuar o cualquier número para salir al menú principal.";
		Leer jugarNuevamente;
		Limpiar Pantalla;
	Hasta Que jugarNuevamente <> 1
FinSubProceso

// Funcion para solicitar al usuario que ingrese el año sobre el que se va a realizar el cálculo
SubProceso pedirAnio(anio Por Referencia)
	Definir llave Como Logico;
	// Solicitamos al usuario ingrese el año
	llave <- Falso;
	Repetir
		Escribir 'Ingrese el año sobre el cual desea calcular el consumo: ';
		Leer anio;
		Si (anio >= 1900) y (anio <= 2024) Entonces
			llave <- Verdadero;
		SiNo
			Escribir "Valor ingresado incorrecto, escriba un año válido (no ingrese espacios en blanco): ";
		FinSi
	Hasta Que llave = Verdadero;
FinSubProceso

// Función para establecer si el año ingresado por el usuario es bisiesto o no. Conforme ello se asigna el valor al mes de febrero.
Funcion diasFebrero <- calculoDiasFebrero(anio)
	Definir diasFebrero Como Entero;
	diasFebrero <- 0; 
	Si ((anio MOD 4=0) Y (anio MOD 100<>0) O anio MOD 400=0) Entonces
		diasFebrero <- 29;
	SiNo
		diasFebrero <- 28;
	FinSi
FinFuncion

// Funcion definir el mes sobre el que se hará el calculo
SubProceso pedirMes(mes Por Referencia)
	Definir llave Como Logico;
	llave <- Falso;
	Repetir
		Escribir "Escriba el nombre del mes que desea calcular el consumo: ";
		Leer mes;
		mes <- Minusculas(mes);
		Si (mes = "enero") o (mes = "febrero") o (mes = "marzo") o (mes = "abril") o (mes = "mayo") o (mes = "junio") o (mes = "julio") o (mes = "agosto") o (mes = "septiembre") o (mes = "octubre") o (mes = "noviembre") o (mes = "diciembre") Entonces
			llave <- Verdadero;
		SiNo
			Escribir "Valor ingresado incorrecto, escriba el nombre del mes con caracteres (no ingrese espacios en blanco): ";
		FinSi
	Hasta Que llave = Verdadero;
FinSubProceso

// Funcion para asignar los días al mes ingresado por el usuario
Funcion dias <- calculoDias(mes,febrero)
	Definir dias Como Entero;
	Si (mes = "enero") o (mes = "marzo") o (mes = "mayo") o  (mes = "julio") o (mes = "agosto") o (mes = "octubre") o (mes = "diciembre") Entonces
		dias <- 31;
	SiNo
		Si (mes = "abril") o (mes = "junio") o (mes = "septiembre") o  (mes = "noviembre")  Entonces
			dias <- 30;
		SiNo
			Si mes = "febrero" Entonces
				dias <- febrero;
			FinSi
		FinSi 
	FinSi
FinFuncion

// Función para registrar el consumo diario
SubAlgoritmo  registrarConsumoDiario(consumo Por Referencia)
	Escribir "Ingrese los KW consumidos en el mes a calcular";
	Leer consumo;
	Mientras consumo < 1 Hacer
		Escribir "Valor incorrecto. Ingrese los KW consumidos en el mes a calcular";
		Leer consumo;
	FinMientras
FinSubAlgoritmo

// Creamos un calendario
SubAlgoritmo crearCalendario(cantidadDias, calendario Por Referencia)
	Definir i, j, contador Como Entero;
	contador <- 1;
	Para i <- 0 Hasta 5 Hacer
		Para j <- 0 Hasta 5 Hacer
			Si contador > cantidadDias Entonces
				calendario[i,j] <- 0;
			SiNo
				calendario[i,j] <- contador;
			FinSi
			contador <- contador + 1;
		FinPara
	FinPara
FinSubAlgoritmo

// Función para mostrar los datos cargados de consumo
SubAlgoritmo mostrarDatos(consumo, cantidadDias, precioKw, calendario, mes, anio)
	Definir i, j Como Entero;
	Definir nombreMes Como Cadena;
	// Obtener el nombre del mes con la primera letra en mayúscula
	nombreMes <- Concatenar(Mayusculas(Subcadena(mes, 0, 0)), Subcadena(mes, 1, Longitud(mes)-1));
	Escribir '';
	Escribir '=================================';
	Escribir "Consumo ", nombreMes, " ", anio, ": $", (consumo * precioKw), Sin Saltar;
	Escribir '';	
	Escribir '=================================';
	Escribir '';
	crearCalendario(cantidadDias, calendario);
	// Mostrar calendario por consola
	Para i <- 0 Hasta 5 Hacer
		Para j <- 0 Hasta 5 Hacer
			si calendario[i,j] < 10 Entonces
				Escribir Sin Saltar " ", calendario[i,j], " ";
			SiNo
				Escribir Sin Saltar calendario[i,j], " ";
			FinSi
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinSubAlgoritmo
// ************************* FIN CONSUMO DE ENERGÍA **********************************
