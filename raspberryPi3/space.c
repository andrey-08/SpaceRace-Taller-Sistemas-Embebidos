//C Headers
#include <stdio.h>
#include <string.h>
#include <ncurses.h>
#include <stdlib.h>

//Linux Headers
#include <fcntl.h> // contiene archivos de control como like O_RDWR
#include <errno.h> // contiene la funcion strerror()
#include <termios.h> //Contiene la terminal POSIX 
#include <unistd.h> // write(), read(), close()

///////////////////////////////////////////////////////////////////////

typedef struct bala{
	signed short x;
	signed short y;
	signed short old_x;

}balas;

typedef struct players{
	unsigned short x;
	unsigned short y;
	unsigned short w;
	unsigned short h;
}naves;

typedef struct win_border{
	chtype ls,rs,ts,bs,tl,tr,bl,br;

}WIN_BORDER;

typedef struct win_struct{
	int startx, starty;
	int height, width;
	WIN_BORDER border;
}WIN;

naves jugador[2];

balas aste1[4], aste2[4], aste3[4], aste5[4], aste7[4];
balas asteD1[4], asteD2[3], asteD4[4], asteD5[3], asteD6[4];


int count = 0;
int count1 = 0;
unsigned short estado = 0;
unsigned short turno_player = 0;

int lineTime = 1;

unsigned short score[]={0,0};
unsigned short avance = 0;
char aste_cont = '0';
char buff_esclavo[8];
char maestro_button = '0';
char flagTime = 'S';
char flag = 'S';
char flag_end = '0';
char serial_data[4];

int mapeo(int y);
void port_config(int serial_port1, int vmin, int vtime);
void init_aste();
void draw_aste();
void init_aste();
void init_players();
void borrar_player(unsigned short x, unsigned short y);
void draw_player(unsigned short x, unsigned short y);
void check_coll(naves nave, balas aste, unsigned short num);
void move_aste();
void move_players(unsigned short direc, unsigned short player);
void port_game(unsigned short c, unsigned short mode);
void ready();
void draw_score_1();
void draw_score_2();
void init_win_params(WIN *p_win);
void create_box(WIN *p_win);
void IA_player();
void choose_turn();
void deserial_data();
void portada();
void draw_lineTime();
void init_counts();
void serial_pack_data();

int main(){

	WIN win;
	int ch;
	int player = 0;

	initscr();
	start_color();
	cbreak(); // Para leer caracteres de forma continua

	init_pair(1, COLOR_RED, COLOR_BLACK);
	init_pair(2, COLOR_CYAN, COLOR_BLACK);
	init_pair(3, COLOR_CYAN, COLOR_WHITE);
	init_pair(4, COLOR_BLUE, COLOR_WHITE);
	init_pair(5, COLOR_YELLOW, COLOR_BLACK);

	init_win_params(&win);

	keypad(stdscr, TRUE);
	noecho();    // No muestre en terminal tecla presionada
	curs_set(0); // Para ocultar el cursor
	timeout(0);  // para que no haya bloqueo en espera de entradas

	/////// CONFIGURACION DEL PUERTO ////////
	int serial_port;
	char buffer[1];
	int n = 0;
	
	

	////////////////////////////////////

	while(1){
		switch (estado){
			case 0:
				serial_port = open("/dev/ttyAMA0", O_RDWR);

				if (serial_port < 0){
					mvprintw(45, 0, "Error %i from open: %s\n", errno, strerror(errno));
				}
				
				port_game(2, 0);
				create_box(&win);
				refresh();
				portada();
				while(1){
					ch = getch();
					if(ch == 49){
						port_game(3,1);
						estado = 1;
						refresh();
						sleep(2);
						clear();
						break;
					}
					if(ch == 50){
						port_game(3,2);
						estado = 2;
						refresh();
						sleep(2);
						clear();
						break;
					}
						
				}


				break;

			case 1:              // ONE PLAYER MODE
				init_counts();
				init_aste();
				init_players();

				create_box(&win);

				ready();

				draw_aste();
				draw_player(jugador[0].x, jugador[0].y);
				draw_player(jugador[1].x, jugador[1].y);
				draw_score_1();
				draw_score_2();
				portada();
				draw_lineTime();

				refresh();

				int timeCount = 0;

				while(1){ 			
					
					if (count > 500){
						count = 0;
					}
					if (count1 > 500){
						count1 = 0;
					}

					if(timeCount >= 6000){
						mvaddch(lineTime, 64,' ');
						timeCount = 0;
						lineTime += 1;

					}
					if (lineTime == 33 ){
						sleep(2);
						clear();
						create_box(&win);
						portada();

						if(score[0] > score[1]){
							mvaddstr(16 ,54, "PC WIN !!! ");
							refresh();
							sleep(4);
							clear();
							estado = 0;
							break;
						}
						else if(score[0] <= score[1]){
							mvaddstr(16 ,54, "YOU WIN !!! ");
							refresh();
							sleep(4);
							clear();
							estado = 0;
							break;
						}
					}

					move_aste();
					draw_aste();

					if (turno_player == 0){
						int count_op=0;
						
						while(1){
							ch = getch();

							if(ch == KEY_UP || ch == KEY_DOWN){
								turno_player = 1;
								break;
							}
							if (count_op > 100000){
								turno_player = 2;
								break;
							}
							
							count_op ++;
						}
					}

					else if (turno_player == 1){

						ch = getch();
						if(ch == KEY_UP){
							move_players(1,1);
							draw_player(jugador[1].x, jugador[1].y);
						}
						if(ch == KEY_DOWN){
							move_players(0,1);
							draw_player(jugador[1].x, jugador[1].y);
						}
					}

					else if(turno_player == 2){
						IA_player();
						getch();
					}


					draw_score_1();
					draw_score_2();
					refresh();
					count ++;
					count1 ++;
					timeCount ++;
				}
				break;

			case 2:    // MODO MULTIJUGADOR
							      
				init_players();
				init_aste();
				draw_player(jugador[1].x, jugador[1].y);
				draw_aste();

				//// DECISION DE MAESTRO Y ESCLAVO //////
				memset(&buffer, '\0', sizeof(buffer));
				memset(&buff_esclavo, '\0', sizeof(buff_esclavo));

				port_config(serial_port, 0, 1);
				n = read(serial_port, &buffer, sizeof(buffer));
				if(n == 0){
					mvaddstr(40, 0, "Maestro");
					char msj[] = {'2'};
					write(serial_port, msj, sizeof(msj));
					player = 1;
				}
				else if (n!= 0 && buffer[0] == '2'){
					mvaddstr(40, 0, "Esclavo");
					player = 2;

				}

				// Inicializaciones //
				score[0] = 0;
				score[1] = 0;
				flag_end = '0';
				lineTime = 0;

			  	mvprintw(45, 0, "Read %i bytes. Received message: %s\n", n, buffer);
			  	/////////////////////////////////////////

			  	refresh();

			  	if(player == 1){ // PARA MAESTRO 

			  		port_config(serial_port, 0, 0); // configuramos para que espere un byte
			  		char buffer_aux = '0';
			  		create_box(&win);
			  		portada();
			  		count = 0;
			  		n=0;

			  		while(1){

			  		}

			  	}

			  	if (player == 2){  //PARA ESCLAVO

			  		char aux_button = '3';
			  		int count_time = 0;
			  		create_box(&win);
			  		portada();
			  		draw_player(jugador[0].x, jugador[0].y);
			  		draw_lineTime();

			  		while (1){

						move_aste();
						draw_aste();

			  			if(turno_player == 0){
			  				ch = getch();
							if(ch == KEY_UP){
								char msj[] = {'2'};
								write(serial_port, msj, sizeof(msj));
								mvaddstr(42, 0, "Enviado 2");
							}
							else if(ch == KEY_DOWN){
								char msj[] = {'1'};
								write(serial_port, msj, sizeof(msj));
								mvaddstr(42, 0, "Enviado 1");							
							}
							else{
								char msj[] = {'0'};
								write(serial_port, msj, sizeof(msj));
								mvaddstr(42, 0, "Enviado 0");

							}

			  			}

			  			else if(turno_player == 2){
				  			ch = getch();
							if(ch == KEY_UP){
								char msj[] = {'2'};
								write(serial_port, msj, sizeof(msj));
								mvaddstr(42, 0, "Enviado 2");
							}
							else if(ch == KEY_DOWN){
								char msj[] = {'1'};
								write(serial_port, msj, sizeof(msj));
								mvaddstr(42, 0, "Enviado 1");							
							}
							else{
								char msj[] = {'0'};
								write(serial_port, msj, sizeof(msj));
							}
						}

						// Recibimos datos enviados por el maestro //
						port_config(serial_port, 8, 0);
						n = read(serial_port, &buff_esclavo, sizeof(buff_esclavo)); // Espera a que reciba los 2 bytes
						
						borrar_player(jugador[1].x, jugador[1].y); 
						borrar_player(jugador[0].x, jugador[0].y); 
						
						deserial_data();  // desempaquetamos los datos

						draw_player(jugador[1].x, jugador[1].y);
						draw_player(jugador[0].x, jugador[0].y);
						
						
						// Aqui se comprueba si asteroides deben de avanzar o no //
						if(aste_cont == 'C'){
							count = 500;
						}
						else if (aste_cont == 'S'){
							count = 0;
						}
						///////////////////////////////////////////////////////////

						// Para saber si linena de tiemo debe disminuir //
						if (flagTime == 'C'){
							count_time ++;
							if(count_time == 2){
								mvaddch(lineTime, 64,' ');
								count_time = 0;
								lineTime ++;
							}
						}
						/////////////////////////////////////////////////

						draw_score_1();
						draw_score_2();
						refresh();

						if(flag_end == '1'){
							sleep(1);
							clear();
							create_box(&win);
			  				portada();

							if(score[0] > score[1]){
								mvaddstr(16 ,54, "YOU WIN !!");
								estado = 0;

							}
							else if(score[0] < score[1]){
								mvaddstr(16 ,54, "YOU LOSE !!");
								estado = 0;
							}
							else{
								mvaddstr(16 ,54, "EMPATE !!");
								estado = 0;
							}
							refresh();
							sleep(3);
							break;
						}

						
					}
			  	}
			  	close(serial_port);
				break;
		}

	}
	endwin();
	return 0;
};

void desempate(){

}

void init_counts(){
	count = 0;
	count1 = 0;
	lineTime = 1;
	score[0] = 0;
	score[1] = 0;
	turno_player = 0;
}

void portada(){
	attron(COLOR_PAIR(5));
	mvaddstr(2, 140, "####  #####   ###    ###  #### ");
	mvaddstr(3, 140, "#     #   #  #   #  #     #    ");
	mvaddstr(4, 140, "####  #####  #####  #     ###  ");
	mvaddstr(5, 140, "   #  #      #   #  #     #    ");
	mvaddstr(6, 140, "####  #      #   #   ###  #### ");

	mvaddstr(8, 145, "####  ###   ### #### ");
	mvaddstr(9, 145, "#  # #   # #    #    ");
	mvaddstr(10,145, "###  ##### #    ##   ");
	mvaddstr(11,145, "#  # #   #  ### #### ");

	mvaddstr(13, 140, "Andrey Sequeira Ruiz");
	mvaddstr(15, 140, "Erick Quiros Zeledon");
	mvaddstr(17, 140, "Prof. Ernesto Rivera");
	mvaddstr(19, 140, "Taller de Sistemas Embebidos");

	attroff(COLOR_PAIR(5));
}

void deserial_data(){
	aste_cont = buff_esclavo[0];
	jugador[1].y = mapeo(buff_esclavo[1] - '0') + 1;
	flagTime = buff_esclavo[2];
	turno_player = buff_esclavo[3] - '0';
	jugador[0].y = mapeo(buff_esclavo[4] - '0') + 1;
	score[1] = buff_esclavo[5] - '0';
	score[0] = buff_esclavo[6] - '0';
	flag_end = buff_esclavo[7];

}

void serial_pack_data(){
	serial_data[0] = flag;
	serial_data[1] = 'O';
	serial_data[2] = 'K';
	serial_data[3] = 0;
	// serial_data[1] = ((jugador[1].y*64/32)-1) + '0';
	// serial_data[2] = ((jugador[0].y*64/32)-1) + '0';
	// serial_data[3] = turno_player + '0';
}

void IA_player(){
     unsigned short i;
     int menor_aux = 0;
     int menor = 999999;
     int menor2 = 999999;


    if(count1 == 500){
     
	     if(jugador[0].y + 3 > 29 ){
	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - aste7[i].x);
	                        if(menor_aux < menor ){
	                             menor = menor_aux;
	                        }
	                }
	   
	                if(menor >= 8 && (jugador[0].y + 3 > 29)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 29 && jugador[0].y + 3 > 25 ){
	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - asteD6[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }
	   
	                if(menor >= 8 && (jugador[0].y + 3 > 25)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 25 && jugador[0].y + 3 > 21 ){
	                for (i = 0; i< 3; i++){
	                        menor_aux = abs(44 - asteD5[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }

	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - aste5[i].x);
	                        if(menor_aux < menor2){
	                             menor2 = menor_aux;
	                        }
	                }
	   
	                if((menor >= 8 && menor2 >= 9 )&& (jugador[0].y + 3 > 21)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 21 && jugador[0].y + 3 > 18 ){
	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - aste5[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }
	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - asteD4[i].x);
	                        if(menor_aux < menor2){
	                             menor2 = menor_aux;
	                        }
	                }

	   
	                if(menor >= 8 && (jugador[0].y + 3 > 18)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 18 && jugador[0].y + 3 > 15 ){
	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - asteD4[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }
	   
	                if(menor >= 8 && (jugador[0].y + 3 > 15)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 15 && jugador[0].y + 3 > 11 ){
	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - aste3[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }
	   
	                if(menor >= 8 && (jugador[0].y + 3 > 11)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 11 && jugador[0].y + 3 > 9 ){
	                for (i = 0; i< 3; i++){
	                        menor_aux = abs(44 - asteD2[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }
	   
	                if(menor >= 8 && (jugador[0].y + 3 > 9)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 9 && jugador[0].y + 3 > 7 ){
	                for (i = 0; i< 4; i++){
	                        menor_aux= abs(44 - aste2[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }
	   
	                if(menor >= 8 && (jugador[0].y + 3 > 7)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 7 && jugador[0].y + 3 > 4 ){
	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - asteD1[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }
	   
	                if(menor >= 8 && (jugador[0].y + 3 > 4)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     else if(jugador[0].y < 4 && jugador[0].y > 0){
	                for (i = 0; i< 4; i++){
	                        menor_aux = abs(44 - aste1[i].x);
	                        if(menor_aux < menor){
	                             menor = menor_aux;
	                        }
	                }
	   
	                if(menor >= 8 && (jugador[0].y + 3 > 1)){
	                   move_players(1,0);
	                   draw_player(jugador[0].x, jugador[0].y);
	                }	             
	     }
	     
	}
}

void ready(){
	attron(COLOR_PAIR(1));
	mvaddstr(16, 60, "READY??");
	attroff(COLOR_PAIR(1));
	refresh();
	sleep(2);
	mvaddstr(16, 60, "       ");

	attron(COLOR_PAIR(1));
	mvaddstr(16, 60, "GO!!!");
	attroff(COLOR_PAIR(1));
	refresh();
	sleep(1);
	mvaddstr(16, 60, "     ");
}

void port_game(unsigned short c, unsigned short mode){
	if(mode == 1){
		attron(COLOR_PAIR(c));
		mvaddstr(16 ,54, "ONE PLAYER (PRESS 1)");
		attroff(COLOR_PAIR(c));
	}
	else if(mode == 2){
		attron(COLOR_PAIR(c));
		mvaddstr(20 ,54, "TWO PLAYERS (PRESS 2)");
		attroff(COLOR_PAIR(c));
	}
	else {
		attron(COLOR_PAIR(c));
		mvaddstr(16 ,54, "ONE PLAYER (PRESS 1)");
		mvaddstr(20 ,54, "TWO PLAYERS (PRESS 2)");
		attroff(COLOR_PAIR(c));
	}
}

void port_config(int serial_port1, int vmin, int vtime){


	// Configuracion del puerto se realiza a traves de termios//
	struct termios tty;

	if(tcgetattr(serial_port1, &tty) != 0){  // Para extraer configuraccion del puerto seria actual y guardar en struct tty
		printf("Error %i from tcgetattr: %s\n", errno, strerror(errno));
	}

	// CONFIG DE BAUDIOS //
	cfsetispeed(&tty, B9600);
	cfsetospeed(&tty, B9600);


	// MODOS DE CONTROL //
	tty.c_cflag &= ~PARENB; // deshabilita el bit de paridad;
	tty.c_cflag &= ~CSTOPB; // Borra bit de parada y Establece unicamente un bit de parada
	tty.c_cflag &= ~CSIZE;  // Limpia todos los bits de tamano
	tty.c_cflag |= CS8;		// Establece una comunicacion de 8 bits por Byte
	tty.c_cflag &= ~CRTSCTS; // Deshabilita el control de flujo por hardware
	tty.c_cflag |= CREAD | CLOCAL; // Enciende READ e ignora las lineas de control

	// MODOS LOCALES //
	tty.c_lflag &= ~ICANON; // Deshabilita el modo canonico (Que es que la entrada se procesa cuando se recibe char de nueva linea)
	tty.c_lflag &= ~ECHO;   // Desahabilita el eco
	tty.c_lflag &= ~ECHOE;
	tty.c_lflag &= ~ECHONL;
	tty.c_lflag &= ~ISIG;   // Deshabilitar caracter de senal

	// MODOS DE ENTRADA //
	tty.c_iflag &= ~(IXON | IXOFF | IXANY); //Deshabilita el control de flujo por software
	tty.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL); //Deshabilita el manejo especial de bytes

	//MODOS DE SALIDA //
	tty.c_oflag &= ~OPOST; //Desactiva el porcesamiento especial lde bytes de salida
	tty.c_oflag &= ~ONLCR;

	// Configuracion de bloqueos y esperas de lecturas //
	tty.c_cc[VTIME] = vtime; 
	tty.c_cc[VMIN] = vmin;

	// CAMBIAR ESTO POR VMIN>0 Y VTIME = 0 //
	/*Lo anterior para hacer que read espere a tener la cantidad de bytes especificados por 
	  VMIN, sin tiempo de espera */

	if(tcsetattr(serial_port1, TCSANOW, &tty) != 0 ){
		printf("Error %i from tcsetattr: %s\n", errno, strerror(errno));
	}
}

void init_aste(){
	aste1[0].x = 16;
	aste1[0].y = mapeo(2)+1; // 2
	aste1[0].old_x = 1;
	aste1[1].x = 48;
	aste1[1].y = mapeo(2)+1;
	aste1[1].old_x = 1;
	aste1[2].x = 89;
	aste1[2].y = mapeo(2)+1;
	aste1[2].old_x = 1;
	aste1[3].x = 124;
	aste1[3].y = mapeo(2)+1;
	aste1[3].old_x = 1;

	aste2[0].x = 13;
	aste2[0].y = mapeo(12)+1;
	aste2[0].old_x = 1;
	aste2[1].x = 48;
	aste2[1].y = mapeo(12)+1;
	aste2[1].old_x = 1;
	aste2[2].x = 78;
	aste2[2].y = mapeo(12)+1;
	aste2[2].old_x = 1;
	aste2[3].x = 111;
	aste2[3].y = mapeo(12)+1;
	aste2[3].old_x = 1;

	aste3[0].x = 22;
	aste3[0].y = mapeo(21)+1;
	aste3[0].old_x = 1;
	aste3[1].x = 62;
	aste3[1].y = mapeo(21)+1;
	aste3[1].old_x = 1;
	aste3[2].x = 92;
	aste3[2].y = mapeo(21)+1;
	aste3[2].old_x = 1;
	aste3[3].x = 126;
	aste3[3].y = mapeo(21)+1;
	aste3[3].old_x = 1;

	aste5[0].x = 17;
	aste5[0].y = mapeo(35)+1;
	aste5[0].old_x = 1;
	aste5[1].x = 61;
	aste5[1].y = mapeo(35)+1;
	aste5[1].old_x = 1;
	aste5[2].x = 94;
	aste5[2].y = mapeo(35)+1;
	aste5[2].old_x = 1;
	aste5[3].x = 118;
	aste5[3].y = mapeo(35)+1;
	aste5[3].old_x = 1;

	aste7[0].x = 7;
	aste7[0].y = mapeo(56)+1;
	aste7[0].old_x = 1;
	aste7[1].x = 41;
	aste7[1].y = mapeo(56)+1;
	aste7[1].old_x = 1;
	aste7[2].x = 74;
	aste7[2].y = mapeo(56)+1;
	aste7[2].old_x = 1;
	aste7[3].x = 107;
	aste7[3].y = mapeo(56)+1;
	aste7[3].old_x = 1;

	//Asteroides que se mueven a la derecha
	asteD1[3].x = 27;
	asteD1[3].y = mapeo(6)+1;
	asteD1[3].old_x = 1;
	asteD1[2].x = 63;
	asteD1[2].y = mapeo(6)+1;
	asteD1[2].old_x = 1;
	asteD1[1].x = 100;
	asteD1[1].y = mapeo(6)+1;
	asteD1[1].old_x = 1;
	asteD1[0].x = 123;
	asteD1[0].y = mapeo(6)+1;
	asteD1[0].old_x = 1;

	asteD2[2].x = 37;
	asteD2[2].y = mapeo(16)+1;
	asteD2[2].old_x = 1;
	asteD2[1].x = 84;
	asteD2[1].y = mapeo(16)+1;
	asteD2[1].old_x = 1;
	asteD2[0].x = 126;
	asteD2[0].y = mapeo(16)+1;
	asteD2[0].old_x = 1;

	asteD4[3].x = 19;
	asteD4[3].y = mapeo(28)+1;
	asteD4[3].old_x = 1;
	asteD4[2].x = 49;
	asteD4[2].y = mapeo(28)+1;
	asteD4[2].old_x = 1;
	asteD4[1].x = 83;
	asteD4[1].y = mapeo(28)+1;
	asteD4[1].old_x = 1;
	asteD4[0].x = 119;
	asteD4[0].y = mapeo(28)+1;
	asteD4[0].old_x = 1;

	asteD5[2].x = 16;
	asteD5[2].y = mapeo(40)+1; //posicion 20
	asteD5[2].old_x = 1;
	asteD5[1].x = 72;
	asteD5[1].y = mapeo(40)+1;
	asteD5[1].old_x = 1;
	asteD5[0].x = 121;
	asteD5[0].y = mapeo(40)+1;
	asteD5[0].old_x = 1;

	asteD6[3].x = 29;
	asteD6[3].y = mapeo(49)+1; //posicion 24
	asteD6[3].old_x = 1;
	asteD6[2].x = 60;
	asteD6[2].y = mapeo(49)+1;
	asteD6[2].old_x = 1;
	asteD6[1].x = 90;
	asteD6[1].y = mapeo(49)+1;
	asteD6[1].old_x = 1;
	asteD6[0].x = 120;
	asteD6[0].y = mapeo(49)+1;
	asteD6[0].old_x = 1;
}

void draw_aste(){
	unsigned short i;
     for(i = 0; i<4; i++){
       	if(aste1[i].x != 64){     		
       		mvaddch(aste1[i].y, aste1[i].x, '+');
   	   	}
   	   	if(aste1[i].old_x != 64){
   	   		mvaddch(aste1[i].y, aste1[i].old_x, ' ');
   	   	}
     }
     for(i = 0; i<4; i++){
     	if(aste2[i].x != 64){
       		mvaddch( aste2[i].y, aste2[i].x, '+');
   		}
   		if(aste2[i].old_x != 64){
   	   		mvaddch(aste2[i].y, aste2[i].old_x, ' ');
   	   	}
     }
     for(i = 0; i<4; i++){
     	if(aste3[i].x != 64){
    		mvaddch(aste3[i].y, aste3[i].x, '+');
    	}
    	if(aste3[i].old_x != 64){
    		mvaddch(aste3[i].y, aste3[i].old_x, ' ');
    	}
     }
     for(i = 0; i<4; i++){
     	if(aste5[i].x != 64){	
       		mvaddch(aste5[i].y, aste5[i].x, '+');
       	}
       	if(aste5[i].old_x != 64){
       		mvaddch(aste5[i].y, aste5[i].old_x, ' ');
       	}
     }
     for(i = 0; i<4; i++){
     	if(aste7[i].x != 64){		
       		mvaddch(aste7[i].y, aste7[i].x, '+');
       	}
       	if(aste7[i].old_x != 64){
       		mvaddch(aste7[i].y, aste7[i].old_x, ' ');
       	}
     }
     
     //Asteroides que se mueven hacia la derecha
     for(i = 0; i<4; i++){
     	if(asteD1[i].x != 64){
	       mvaddch(asteD1[i].y, asteD1[i].x, '+');
	    }
	    if(asteD1[i].old_x != 64){
	    	mvaddch(asteD1[i].y, asteD1[i].old_x, ' ');
	    }
     }
     for(i = 0; i<3; i++){
     	if(asteD2[i].x != 64){
       		mvaddch(asteD2[i].y, asteD2[i].x, '+');
       	}
   		if(asteD2[i].old_x != 64){
   			mvaddch(asteD2[i].y, asteD2[i].old_x, ' ');
   		}	
     }

     for(i = 0; i<4; i++){
     	if(asteD4[i].x != 64){	
       		mvaddch(asteD4[i].y, asteD4[i].x, '+');
   		}
   		if(asteD4[i].old_x != 64){
   			mvaddch(asteD4[i].y, asteD4[i].old_x, ' ');	
   		}
     }
     for(i = 0; i<3; i++){
     	if(asteD5[i].x != 64){
       		mvaddch(asteD5[i].y, asteD5[i].x, '+');
   		}
   		if(asteD5[i].old_x != 64){
   			mvaddch(asteD5[i].y, asteD5[i].old_x, ' ');
   		}
     }
     for(i = 0; i<4; i++){
     	if(asteD6[i].x != 64){
       		mvaddch(asteD6[i].y, asteD6[i].x, '+');
     	}
     	if(asteD6[i].old_x != 64){
   			mvaddch(asteD6[i].y, asteD6[i].old_x, ' ');
   		}
     }
}

void move_aste(){
   unsigned short i;
   if (count == 500){
       for(i = 0; i <4; i++){
       		aste1[i].old_x = aste1[i].x;
            aste1[i].x -= 1;
            if(aste1[i].x<=1){
                  aste1[i].x = 127;
            }

            if(estado == 1){

	            if(turno_player == 1){
	              if((aste1[i].y >= jugador[1].y) &&(aste1[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], aste1[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((aste1[i].y >= jugador[0].y) &&(aste1[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], aste1[i], 0);
	              }
	            }
        	}
       }
       for(i = 0; i <4; i++){
       		aste2[i].old_x = aste2[i].x;          
            aste2[i].x -= 1;
            if(aste2[i].x<=1){
                  aste2[i].x = 127;
            }
            if (estado == 1){
	            if(turno_player == 1){
	              if((aste2[i].y >= jugador[1].y) &&(aste2[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], aste2[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((aste2[i].y >= jugador[0].y) &&(aste2[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], aste2[i], 0);
	              }
	            }
	        }
       }
       for(i = 0; i <4; i++){
       		aste3[i].old_x = aste3[i].x;
            aste3[i].x -= 1;
            if(aste3[i].x<=1){
                  aste3[i].x = 127;
            }
            if(estado == 1){
	            if(turno_player == 1){
	              if((aste3[i].y >= jugador[1].y) &&(aste3[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], aste3[i], 1);
	              }

	            }
	            else if(turno_player == 2){
	            	if((aste3[i].y >= jugador[0].y) &&(aste3[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], aste3[i], 0);
	              }
	            }
	        }
       }
       for(i = 0; i <4; i++){
       		aste5[i].old_x = aste5[i].x;
            aste5[i].x -= 1;
            if(aste5[i].x<=1){
                  aste5[i].x = 127;
            }
            if(estado == 1){
            	if(turno_player == 1){
	              if((aste5[i].y >= jugador[1].y) &&(aste5[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], aste5[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((aste5[i].y >= jugador[0].y) &&(aste5[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], aste5[i], 0);
	              }
	            }
        	}
       }
       for(i = 0; i <4; i++){
       		aste7[i].old_x = aste7[i].x;
            aste7[i].x -= 1;
            if(aste7[i].x<=1){
                  aste7[i].x = 127;
            }
            if (estado == 1){ 
	            if(turno_player == 1){
	              if((aste7[i].y >= jugador[1].y) &&(aste7[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], aste7[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((aste7[i].y >= jugador[0].y) &&(aste7[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], aste7[i], 0);
	              }
	            }
	        }
       }
       //Asteroides que se mueven a la derecha
       for(i = 0; i <4; i++){
       	    asteD1[i].old_x = asteD1[i].x;
            asteD1[i].x += 1;
            if(asteD1[i].x > 126){
                  asteD1[i].x = 2;
            }
            if(estado == 1){
	            if(turno_player == 1){
	              if((asteD1[i].y >= jugador[1].y) &&(asteD1[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], asteD1[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((asteD1[i].y >= jugador[0].y) &&(asteD1[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], asteD1[i], 0);
	              }
	            }
	        }
       }
       for(i = 0; i <3; i++){
       		asteD2[i].old_x = asteD2[i].x;
            asteD2[i].x += 1;
            if(asteD2[i].x > 126){
                  asteD2[i].x = 2;
            }
            if (estado == 1){
	            if(turno_player == 1){
	              if((asteD2[i].y >= jugador[1].y) &&(asteD2[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], asteD2[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((asteD2[i].y >= jugador[0].y) &&(asteD2[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], asteD2[i], 0);
	              }
	            }
        	}

       }

       for(i = 0; i <4; i++){
       		asteD4[i].old_x = asteD4[i].x;
            asteD4[i].x += 1;
            if(asteD4[i].x > 126){
                  asteD4[i].x = 2;
            }
            if(estado == 1){
	            if(turno_player == 1){
	              if((asteD4[i].y >= jugador[1].y) &&(asteD4[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], asteD4[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((asteD4[i].y >= jugador[0].y) &&(asteD4[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], asteD4[i], 0);
	              }
	            }
        	}
       }
       for(i = 0; i <3; i++){
            asteD5[i].old_x = asteD5[i].x;
            asteD5[i].x += 1;
            if(asteD5[i].x > 126){
                  asteD5[i].x = 2;
            }
            if(estado == 1){
	            if(turno_player == 1){
	              if((asteD5[i].y >= jugador[1].y) &&(asteD5[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], asteD5[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((asteD5[i].y >= jugador[0].y) &&(asteD5[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], asteD5[i], 0);
	              }
	            }
        	}
       }
       for(i = 0; i <4; i++){
       		asteD6[i].old_x = asteD6[i].x;
            asteD6[i].x += 1;
            if(asteD6[i].x > 126){
                  asteD6[i].x = 2;
            }
            if(estado == 1){
	            if(turno_player == 1){
	              if((asteD6[i].y >= jugador[1].y) &&(asteD6[i].y < jugador[1].y + 3)){
	                    check_coll(jugador[1], asteD6[i], 1);
	              }
	            }
	            else if(turno_player == 2){
	            	if((asteD6[i].y >= jugador[0].y) &&(asteD6[0].y < jugador[0].y + 3)){
	                    check_coll(jugador[0], asteD6[i], 0);
	              }
	            }
        	}
       }

   }
}

int mapeo(int y){
	int local_y;

	local_y = (32*y)/64;

	return local_y;
}

void init_players(){
	jugador[0].x = 42;
	jugador[0].y = mapeo(59)+1;
	jugador[0].w = 3;
    jugador[0].h = 2;

    jugador[1].x =  82;
    jugador[1].y = mapeo(59)+1;
    jugador[1].w = 3;
    jugador[1].h = 2;
}

void draw_player(unsigned short x, unsigned short y){
	attron(COLOR_PAIR(1));
	mvaddch(y, x+2, 'X');
	mvaddch(y+1, x+2, 'X');
	mvaddch(y+2, x+4, 'X');
	mvaddch(y+2, x, 'X');
	attroff(COLOR_PAIR(1));
}

void move_players(unsigned short direc, unsigned short player){
	if(direc == 0){ // Direccion hacia abajo
		if(jugador[player].y >= (mapeo(63)+1) - jugador[player].h){
			borrar_player(jugador[player].x, jugador[player].y);
			jugador[player].y = (mapeo(63)+1) - jugador[player].h;
		}
		else{
			borrar_player(jugador[player].x, jugador[player].y);
			jugador[player].y += 1;
		}
	}
	if(direc == 1){  // Direccion hacia arriba
		if(jugador[player].y <= 1){
			borrar_player(jugador[player].x, jugador[player].y);
			jugador[player].y = mapeo(59)+1;
			score[player] += 1;
			turno_player = 0;
		}
		else{
			borrar_player(jugador[player].x, jugador[player].y);
			jugador[player].y -= 1;
		}
	}
}

void borrar_player(unsigned short x, unsigned short y){
	mvaddch(y, x+2, ' ');
	mvaddch(y+1, x+2, ' ');
	mvaddch(y+2, x+4, ' ');
	mvaddch(y+2, x, ' ');
}

void check_coll(naves nave, balas aste, unsigned short num){
    if(num == 1){
        if((aste.x >= nave.x) && (aste.x < nave.x + 4)) {
           borrar_player(nave.x, nave.y);
           init_players();
           draw_player(jugador[1].x, jugador[1].y);
           turno_player = 0;
        }
    }
    if(num == 0){
        if((aste.x >= nave.x) && (aste.x < nave.x + 4)) {
           borrar_player(nave.x, nave.y);
           init_players();
           draw_player(jugador[0].x, jugador[0].y);
           turno_player = 0;
           avance = 0;
        }
    }
}

void draw_lineTime(){
       unsigned short i = lineTime;
       for(i ; i< mapeo(64) ; i++){
            mvaddch(i, 64,'|');
       }
}

void draw_score_1(){
	attron(COLOR_PAIR(4));
    if(score[1] == 0){
          mvaddstr(31, 90, " 0 ");
    }
    if(score[1] == 1){
          mvaddstr(31, 90, " 1 ");
    }
    if(score[1] == 2){
          mvaddstr(31, 90, " 2 ");
    }
    if(score[1] == 3){
          mvaddstr(31, 90, " 3 ");
    }
    if(score[1] == 4){
          mvaddstr(31, 90, " 4 ");
    }
    if(score[1] == 5){
          mvaddstr(31, 90, " 5 ");
    }
    if(score[1] == 6){
          mvaddstr(31, 90, " 6 ");
    }
    if(score[1] == 7){
          mvaddstr(31, 90, " 7 ");
    }
    if(score[1] == 8){
          mvaddstr(31, 90, " 8 ");
    }
    if(score[1] == 9){
          mvaddstr(31, 90, " 9 ");
    }
    attroff(COLOR_PAIR(4));
}

void draw_score_2(){
	attron(COLOR_PAIR(4));
    if(score[0] == 0){
          mvaddstr(31, 50, " 0 ");
    }
    if(score[0] == 1){
          mvaddstr(31, 50, " 1 ");
    }
    if(score[0] == 2){
          mvaddstr(31, 50, " 2 ");
    }
    if(score[0] == 3){
          mvaddstr(31, 50, " 3 ");
    }
    if(score[0] == 4){
          mvaddstr(31, 50, " 4 ");
    }
    if(score[0] == 5){
          mvaddstr(31, 50, " 5 ");
    }
    if(score[0] == 6){
          mvaddstr(31, 50, " 6 ");
    }
    if(score[0] == 7){
          mvaddstr(31, 50, " 7 ");
    }
    if(score[0] == 8){
          mvaddstr(31, 50, " 8 ");
    }
    if(score[0] == 9){
          mvaddstr(31, 50, " 9 ");
    }
    attroff(COLOR_PAIR(4));
}

void init_win_params(WIN *p_win){
    p_win->height = 33;
    p_win->width = 129;
    p_win->starty = 0;  
    p_win->startx = 0;

    p_win->border.ls = '|';
    p_win->border.rs = '|';
    p_win->border.ts = '-';
    p_win->border.bs = '-';
    p_win->border.tl = '+';
    p_win->border.tr = '+';
    p_win->border.bl = '+';
    p_win->border.br = '+';
}

void create_box(WIN *p_win){   
	int i, j;
    int x, y, w, h;

    x = p_win->startx;
    y = p_win->starty;
    w = p_win->width;
    h = p_win->height;

    mvaddch(y, x, p_win->border.tl);
    mvaddch(y, x + w, p_win->border.tr);
    mvaddch(y + h, x, p_win->border.bl);
    mvaddch(y + h, x + w, p_win->border.br);
    mvhline(y, x + 1, p_win->border.ts, w - 1);
    mvhline(y + h, x + 1, p_win->border.bs, w - 1);
    mvvline(y + 1, x, p_win->border.ls, h - 1);
    mvvline(y + 1, x + w, p_win->border.rs, h - 1);
                
    refresh();
}
