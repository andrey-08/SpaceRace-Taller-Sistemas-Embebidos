const code char GameOver[1024];
const code char TEC[1024];
const code char space[1024];
unsigned short estado = 0;  // Me define si estoy en menu princimal, modo 1 o modo 2
unsigned short score[] = {0,0};
unsigned short count = 0;  //Contador para el movimiento de la bola
unsigned short count1 = 0; //Contador para el movimeinto de la IA

unsigned short lineTime = 0;  //contador para la linea de tiempo
unsigned short timeCount = 0;  //tiempo transcurrido

unsigned short turno_player = 0; // Indica de quien es el turno de jugar
unsigned short avanc = 0;    // Indica al esclavo que los aste deben moverse.

unsigned y = 0;

typedef struct players{
      unsigned short x;
      unsigned short y;
      unsigned short w;
      unsigned short h;
}naves;

typedef struct bala{
         signed short x;
         signed short y;
         signed short old_x;
}balas;

naves jugador[2];
balas aste1[4], aste2[4], aste3[4], aste5[4], aste7[4];
balas asteD1[4], asteD2[3], asteD4[4], asteD5[3], asteD6[4];
naves old_jugador[2];

char serial_data[9]; // Para crear el paquete de datos a enviar
char flag = 'S';
char flagTime = 'S';
char flag_end = '0';
/* Las conexiones en en PIC se deciden segun
   la conexcion del socket en la placa*/
char GLCD_DataPort at PORTD;
sbit GLCD_CS1 at LATB0_bit;
sbit GLCD_CS2 at LATB1_bit;
sbit GLCD_RS  at LATB2_bit;
sbit GLCD_RW  at LATB3_bit;
sbit GLCD_EN  at LATB4_bit;
sbit GLCD_RST at LATB5_bit;

sbit GLCD_CS1_Direction at TRISB0_bit;
sbit GLCD_CS2_Direction at TRISB1_bit;
sbit GLCD_RS_Direction  at TRISB2_bit;
sbit GLCD_RW_Direction  at TRISB3_bit;
sbit GLCD_EN_Direction  at TRISB4_bit;
sbit GLCD_RST_Direction at TRISB5_bit;
///////////////////////////////////////////
void draw_player(unsigned short x, unsigned short y);
void draw_ball(unsigned short x, unsigned short y);
void draw_aste();
void check_coll(naves nave, balas aste, unsigned short num);

void port_space(){          // Para mostrar la portada principal
       Glcd_Image(space);
       Glcd_Write_Text("One player", 35, 4,1);
       Glcd_Write_Text("Two players", 32, 6,1);
}

void game_over(){
  Glcd_Image(GameOver);
}

void first_CoverP(){
   Glcd_Image(TEC);
   Glcd_Write_Text_Adv("Andrey Sequeira", 4, 21);
   Glcd_Write_Text_Adv("Erick Quiros", 4, 31);
   Glcd_Write_Text_Adv("Prof. Ernesto Rivera", 4, 42);
   Glcd_Write_Text_Adv("Taller de Sist. Embebidos", 4, 52);
   Delay_ms(3000);
}

void init(){

  // Para jugador 1 //
    jugador[0].x = 42;
    jugador[0].y = 59;
    jugador[0].w = 3;
    jugador[0].h = 4;

    // Para jugador 2 //
    jugador[1].x =  82;
    jugador[1].y = 59;
    jugador[1].w = 3;
    jugador[1].h = 4;

    draw_player(jugador[0].x, jugador[0].y);
    draw_player(jugador[1].x, jugador[1].y);
    
}

void init_aste(){
       aste1[0].x = 16;
       aste1[0].y = 2;
       aste1[1].x = 48;
       aste1[1].y = 2;
       aste1[2].x = 89;
       aste1[2].y = 2;
       aste1[3].x = 124;
       aste1[3].y = 2;
       
       aste2[0].x = 13;
       aste2[0].y = 12;
       aste2[1].x = 48;
       aste2[1].y = 12;
       aste2[2].x = 78;
       aste2[2].y = 12;
       aste2[3].x = 111;
       aste2[3].y = 12;
       
       aste3[0].x = 22;
       aste3[0].y = 21;
       aste3[1].x = 62;
       aste3[1].y = 21;
       aste3[2].x = 92;
       aste3[2].y = 21;
       aste3[3].x = 126;
       aste3[3].y = 21;

       aste5[0].x = 17;
       aste5[0].y = 35;
       aste5[1].x = 61;
       aste5[1].y = 35;
       aste5[2].x = 94;
       aste5[2].y = 35;
       aste5[3].x = 118;
       aste5[3].y = 35;
       
       aste7[0].x = 7;
       aste7[0].y = 56;
       aste7[1].x = 41;
       aste7[1].y = 56;
       aste7[2].x = 74;
       aste7[2].y = 56;
       aste7[3].x = 107;
       aste7[3].y = 56;

       //Asteroides que se mueven a la derecha
       asteD1[3].x = 27;
       asteD1[3].y = 6;
       asteD1[2].x = 63;
       asteD1[2].y = 6;
       asteD1[1].x = 100;
       asteD1[1].y = 6;
       asteD1[0].x = 123;
       asteD1[0].y = 6;
       
       asteD2[2].x = 37;
       asteD2[2].y = 16;
       asteD2[1].x = 84;
       asteD2[1].y = 16;
       asteD2[0].x = 126;
       asteD2[0].y = 16;
       
       asteD4[3].x = 19;
       asteD4[3].y = 28;
       asteD4[2].x = 49;
       asteD4[2].y = 28;
       asteD4[1].x = 83;
       asteD4[1].y = 28;
       asteD4[0].x = 119;
       asteD4[0].y = 28;
       
       asteD5[2].x = 16;
       asteD5[2].y = 40;
       asteD5[1].x = 72;
       asteD5[1].y = 40;
       asteD5[0].x = 121;
       asteD5[0].y = 40;
       
       asteD6[3].x = 29;
       asteD6[3].y = 49;
       asteD6[2].x = 60;
       asteD6[2].y = 49;
       asteD6[1].x = 90;
       asteD6[1].y = 49;
       asteD6[0].x = 120;
       asteD6[0].y = 49;
       
       draw_aste();
}

void draw_player(unsigned short x, unsigned short y){
        Glcd_Dot(x+2, y, 1);
        Glcd_Dot(x+2, y+2, 1);
        Glcd_Dot(x+4, y+4, 1);
        Glcd_Dot(x, y+4, 1);
}

void draw_aste(){
     unsigned short i;
     for(i = 0; i<4; i++){
           if(aste1[i].x != 64){
                         Glcd_Dot(aste1[i].x, aste1[i].y, 1);
           }
           if(aste1[i].old_x != 64){
                         Glcd_Dot(aste1[i].old_x, aste1[i].y, 0);
           }
     }
     for(i = 0; i<4; i++){
           if(aste2[i].x != 64){
                 Glcd_Dot(aste2[i].x, aste2[i].y, 1);
           }
           if(aste2[i].old_x != 64){
                 Glcd_Dot(aste2[i].old_x, aste2[i].y, 0);
           }
     }
     for(i = 0; i<4; i++){
           if(aste3[i].x != 64){
                Glcd_Dot(aste3[i].x, aste3[i].y, 1);
           }
           if(aste3[i].old_x != 64){
                Glcd_Dot(aste3[i].old_x, aste3[i].y, 0);
           }
     }
     for(i = 0; i<4; i++){
           if(aste5[i].x != 64){
                 Glcd_Dot(aste5[i].x, aste5[i].y, 1);
           }
           if(aste5[i].old_x != 64){
                Glcd_Dot(aste5[i].old_x, aste5[i].y, 0);
           }
     }
     for(i = 0; i<4; i++){
           if(aste7[i].x != 64){
                Glcd_Dot(aste7[i].x, aste7[i].y, 1);
           }
           if(aste7[i].old_x != 64){
                Glcd_Dot(aste7[i].old_x, aste7[i].y, 0);
           }
     }
     
     //Asteroides que se mueven hacia la derecha
     for(i = 0; i<4; i++){
           if(asteD1[i].x != 64){
                  Glcd_Dot(asteD1[i].x, 6, 1);
           }
           if(asteD1[i].old_x != 64){
                 Glcd_Dot(asteD1[i].old_x, 6, 0);
           }
     }
     for(i = 0; i<3; i++){
           if(asteD2[i].x != 64){
                Glcd_Dot(asteD2[i].x, 16, 1);
           }
           if(asteD2[i].old_x != 64){
                Glcd_Dot(asteD2[i].old_x, 16, 0);
           }
     }

     for(i = 0; i<4; i++){
           if(asteD4[i].x != 64){
                Glcd_Dot(asteD4[i].x, 28, 1);
           }
           if(asteD4[i].old_x != 64){
                Glcd_Dot(asteD4[i].old_x, 28, 0);
           }
     }
     for(i = 0; i<3; i++){
           if(asteD5[i].x != 64){
                 Glcd_Dot(asteD5[i].x, 40, 1);
           }
           if(asteD5[i].old_x != 64){
                 Glcd_Dot(asteD5[i].old_x, 40, 0);
           }

     }
     for(i = 0; i<4; i++){
           if(asteD6[i].x != 64){
                 Glcd_Dot(asteD6[i].x, 49, 1);
           }
           if(asteD6[i].old_x != 64){
                 Glcd_Dot(asteD6[i].old_x, 49, 0);
           }

     }

}

void draw_score_1(){
    if(score[1] == 0){
          Glcd_Write_Text("0", 98 , 7, 1);
    }
    if(score[1] == 1){
          Glcd_Write_Text("1", 98 , 7, 1);
    }
    if(score[1] == 2){
          Glcd_Write_Text("2", 98 , 7, 1);
    }
    if(score[1] == 3){
          Glcd_Write_Text("3", 98 , 7, 1);
    }
    if(score[1] == 4){
          Glcd_Write_Text("4", 98 , 7, 1);
    }
    if(score[1] == 5){
          Glcd_Write_Text("5", 98 , 7, 1);
    }
    if(score[1] == 6){
          Glcd_Write_Text("6", 98 , 7, 1);
    }
    if(score[1] == 7){
          Glcd_Write_Text("7", 98 , 7, 1);
    }
    if(score[1] == 8){
          Glcd_Write_Text("8", 98 , 7, 1);
    }
    if(score[1] == 9){
          Glcd_Write_Text("9", 98 , 7, 1);
    }
}

void draw_score_2(){
    if(score[0] == 0){
          Glcd_Write_Text("0", 25 , 7, 1);
    }
    if(score[0] == 1){
          Glcd_Write_Text("1", 25 , 7, 1);
    }
    if(score[0] == 2){
          Glcd_Write_Text("2", 25 , 7, 1);
    }
    if(score[0] == 3){
          Glcd_Write_Text("3", 25 , 7, 1);
    }
    if(score[0] == 4){
          Glcd_Write_Text("4", 25 , 7, 1);
    }
    if(score[0] == 5){
          Glcd_Write_Text("5", 25 , 7, 1);
    }
    if(score[0] == 6){
          Glcd_Write_Text("6", 25 , 7, 1);
    }
    if(score[0] == 7){
          Glcd_Write_Text("7", 25 , 7, 1);
    }
    if(score[0] == 8){
          Glcd_Write_Text("8", 25 , 7, 1);
    }
    if(score[0] == 9){
          Glcd_Write_Text("9", 25 , 7, 1);
    }

}

void borrar_player(unsigned short x, unsigned short y){
        Glcd_Dot(x+2, y, 0);
        Glcd_Dot(x+2, y+2, 0);
        Glcd_Dot(x+4, y+4, 0);
        Glcd_Dot(x, y+4, 0);
}

void move_players(unsigned short direc, unsigned short player){
      if(direc == 0){ // Direccion hacia abajo
          if(jugador[player].y >= 63 - jugador[player].h){
              borrar_player(jugador[player].x, jugador[player].y);
              jugador[player].y = 63 - jugador[player].h;
          }
          else{
              borrar_player(jugador[player].x, jugador[player].y);
              jugador[player].y += 2;
          }
      }
      if(direc == 1){  // Direccion hacia arriba
          if(jugador[player].y <= 1){
                 borrar_player(jugador[player].x, jugador[player].y);
                 jugador[player].y = 59;
                 score[player] += 1;
                 turno_player = 0;
          }
          else{
                 borrar_player(jugador[player].x, jugador[player].y);
                 jugador[player].y -= 2;
          }
      }
}

void move_aste(){
       unsigned short i;
       if (count == 3){
           for(i = 0; i <4; i++){
                aste1[i].old_x = aste1[i].x;
                aste1[i].x -= 1;
                if(aste1[i].x<=1){
                      aste1[i].x = 127;
                }
                if(turno_player == 1){
                  if((aste1[i].y >= jugador[1].y) &&(aste1[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], aste1[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((aste1[i].y >= jugador[0].y) &&(aste1[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], aste1[i], 1);
                  }
                }
           }
           for(i = 0; i <4; i++){
                aste2[i].old_x = aste2[i].x;
                aste2[i].x -= 1;
                if(aste2[i].x<=1){
                      aste2[i].x = 127;
                }
                if(turno_player == 1){
                  if((aste2[i].y >= jugador[1].y) &&(aste2[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], aste2[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((aste2[i].y >= jugador[0].y) &&(aste2[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], aste2[i], 1);
                  }
                }
           }
           for(i = 0; i <4; i++){
                aste3[i].old_x = aste3[i].x;
                aste3[i].x -= 1;
                if(aste3[i].x<=1){
                      aste3[i].x = 127;
                }
                if(turno_player == 1){
                  if((aste3[i].y >= jugador[1].y) &&(aste3[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], aste3[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((aste3[i].y >= jugador[0].y) &&(aste3[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], aste3[i], 1);
                  }
                }
           }
           for(i = 0; i <4; i++){
                aste5[i].old_x = aste5[i].x;
                aste5[i].x -= 1;
                if(aste5[i].x<=1){
                      aste5[i].x = 127;
                }
                if(turno_player == 1){
                  if((aste5[i].y >= jugador[1].y) &&(aste5[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], aste5[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((aste5[i].y >= jugador[0].y) &&(aste5[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], aste5[i], 1);
                  }
                }
           }
           for(i = 0; i <4; i++){
                aste7[i].old_x = aste7[i].x;
                aste7[i].x -= 1;
                if(aste7[i].x<=1){
                      aste7[i].x = 127;
                }
                if(turno_player == 1){
                  if((aste7[i].y >= jugador[1].y) &&(aste7[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], aste7[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((aste7[i].y >= jugador[0].y) &&(aste7[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], aste7[i], 1);
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
                if(turno_player == 1){
                  if((asteD1[i].y >= jugador[1].y) &&(asteD1[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], asteD1[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((asteD1[i].y >= jugador[0].y) &&(asteD1[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], asteD1[i], 1);
                  }
                }
           }
           for(i = 0; i <3; i++){
                asteD2[i].old_x = asteD2[i].x;
                asteD2[i].x += 1;
                if(asteD2[i].x > 126){
                      asteD2[i].x = 2;
                }
                if(turno_player == 1){
                  if((asteD2[i].y >= jugador[1].y) &&(asteD2[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], asteD2[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((asteD2[i].y >= jugador[0].y) &&(asteD2[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], asteD2[i], 1);
                  }
                }
           }

           for(i = 0; i <4; i++){
                asteD4[i].old_x = asteD4[i].x;
                asteD4[i].x += 1;
                if(asteD4[i].x > 126){
                      asteD4[i].x = 2;
                }
                if(turno_player == 1){
                  if((asteD4[i].y >= jugador[1].y) &&(asteD4[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], asteD4[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((asteD4[i].y >= jugador[0].y) &&(asteD4[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], asteD4[i], 1);
                  }
                }
           }
           for(i = 0; i <3; i++){
                asteD5[i].old_x = asteD5[i].x;
                asteD5[i].x += 1;
                if(asteD5[i].x > 126){
                      asteD5[i].x = 2;
                }
                if(turno_player == 1){
                  if((asteD5[i].y >= jugador[1].y) &&(asteD5[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], asteD5[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((asteD5[i].y >= jugador[0].y) &&(asteD5[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], asteD5[i], 1);
                  }
                }
           }
           for(i = 0; i <4; i++){
                asteD6[i].old_x = asteD6[i].x;
                asteD6[i].x += 1;
                if(asteD6[i].x > 126){
                      asteD6[i].x = 2;
                }
                if(turno_player == 1){
                  if((asteD6[i].y >= jugador[1].y) &&(asteD6[i].y < jugador[1].y + 4)){
                        check_coll(jugador[1], asteD6[i], 1);
                  }
                }
                else if(turno_player == 2){
                  if((asteD6[i].y >= jugador[0].y) &&(asteD6[i].y < jugador[0].y + 4)){
                        check_coll(jugador[0], asteD6[i], 1);
                  }
                }
           }
       }
}

void draw_lineTime(){
       unsigned short i = lineTime;
       for(i ; i<64; i++){
            Glcd_Dot(64, i, 1);
       }
}

void check_coll(naves nave, balas aste, unsigned short num){
    if(num == 1){
        if((aste.x >= nave.x) && (aste.x < nave.x + 4)) {
           borrar_player(nave.x, nave.y);
           init();
           turno_player = 0;
        }
    }
}

void IA_player(){
     unsigned short i;
     int menor_aux = 0;
     int menor = 999;
     int menor2 = 999;
     
     if (count1 == 6){
             if(jugador[0].y + 4 > 56){
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - aste7[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }
                  
                  if(menor >= 8 && (jugador[0].y + 4 > 56)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             else if( jugador[0].y < 56 && jugador[0].y + 4 > 48){
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - asteD6[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }

                  if(menor >= 8 && (jugador[0].y + 4 > 48)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             else if( jugador[0].y < 48 && jugador[0].y + 4 > 40){
                  for( i = 0; i<3; i++){
                       menor_aux = fabs( 44 - asteD5[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - aste5[i].x );
                       if(menor_aux < menor2){
                              menor2 = menor_aux;
                       }
                  }

                  if((menor >= 8 && menor2 >= 11) && (jugador[0].y + 4 > 40)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             else if( jugador[0].y < 40 && jugador[0].y + 4 > 35){
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - aste5[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - asteD4[i].x );
                       if(menor_aux < menor2){
                              menor2 = menor_aux;
                       }
                  }

                  if(menor >= 8&& (jugador[0].y + 4 > 35)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             else if( jugador[0].y < 35 && jugador[0].y + 4 > 28){
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - asteD4[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }

                  if(menor >= 8 && (jugador[0].y + 4 > 28)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             else if( jugador[0].y < 28 && jugador[0].y + 4 > 21){
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - aste3[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }

                  if(menor >= 8 && (jugador[0].y + 4 > 21)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             else if( jugador[0].y < 21 && jugador[0].y + 4 > 16){
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - asteD2[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }

                  if(menor >= 8 && (jugador[0].y + 4 > 16)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             else if( jugador[0].y < 16 && jugador[0].y + 4 > 12){
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - aste2[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }

                  if(menor >= 8 && (jugador[0].y + 4 > 12)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             else if( jugador[0].y < 12 && jugador[0].y + 4 > 6){
                  for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - asteD1[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                  }

                  if(menor >= 8 && (jugador[0].y + 4 > 6)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                  }
             }
             
             else if (jugador[0].y < 6 && jugador[0].y > 0){
                for( i = 0; i<4; i++){
                       menor_aux = fabs( 44 - aste1[i].x );
                       if(menor_aux < menor){
                              menor = menor_aux;
                       }
                }
                if(menor >= 8 && (jugador[0].y + 4 > 1)){
                       move_players(1,0);
                       draw_player(jugador[0].x , jugador[0].y);
                }
             
             }
             
     
     }
     
}

void send_char(char charValue){
     while (UART1_Tx_Idle()!= 1);
     UART1_Write(charValue);
}

void serial_pack_data() {  //Funcion para empaquetar datos a enviar
      
      serial_data[0] = flag;
      serial_data[1] = jugador[1].y + '0';
      serial_data[2] = flagTime;
      serial_data[3] = turno_player + '0';
      serial_data[4] = jugador[0].y + '0';
      serial_data[5] = score[1] + '0';
      serial_data[6] = score[0] + '0';
      serial_data[7] = flag_end;
      serial_data[8] = 0;
}

void send_pack_data(char *serial_dir){
     while (UART1_Tx_Idle()!= 1);
     UART1_Write_Text(serial_dir);
}

void init_counts(){
     count = 0;
     count1 = 0;
     lineTime = 0;
     timeCount = 0;
     score[0] = 0;
     score[1] = 0;
     turno_player = 0;

}

void main() {
    char E_M = '3';
    unsigned short Player = 0;
    unsigned short count_op = 0;
    // Inicializamos libreria glcd //
    Glcd_Init();         // Para inicialzar el modulo glcd
    Glcd_Fill(0x00);        // Para limpiar la pantalla
    ////////////////////////////////
    
    // Declaramos las entradas //
    PORTC = 0;      //Ponemos todo el puerto C en 0
    TRISC.F0 = 1;   //Se declara como una entrada
    TRISC.F1 = 1;
    ////////////////////////////////
    
    // Inicializamos libreria UART //
    UART1_Init(9600); // baudios a 9600
    Delay_ms(200);    // Esperamos a que se estabilice el modulo uart
    /////////////////////////////////
    
    ADC_Init();
    
    first_CoverP();
    Glcd_Fill(0x00);

    while(1){
       switch(estado){
           case 0:
                  port_space();
                  while(1){
                      y = ADC_Read(0);
                      if (y <= 100) {
                         Glcd_Write_Text("One player", 35, 4,0);
                         estado = 1;
                         Delay_ms(1000);
                         break;
                      }
                      if(y >= 600){
                         Glcd_Write_Text("Two players", 32, 6,0);
                         estado = 2;
                         Delay_ms(1000);
                         break;
                      }
                      
                     /*if (PORTC.F0) {
                         Glcd_Write_Text("One player", 35, 4,0);
                         estado = 1;
                         Delay_ms(1000);
                         break;
                      }
                      if(PORTC.F1){
                         Glcd_Write_Text("Two players", 32, 6,0);
                         estado = 2;
                         Delay_ms(1000);
                         break;
                      }*/
                  }
                  Glcd_Fill(0x00);
                  break;

           case 1:   // Caso single player
                  init_counts();
                  init();
                  init_aste();
                  draw_lineTime();
                  
                  // Se inician todas las variables //
                  while(1){
                         if (count > 3){
                             count = 0;
                         }
                         if (timeCount >= 20){
                            Glcd_Dot(64, lineTime, 0);
                            timeCount = 0;
                            lineTime += 1;
                         }
                         if(count1 > 6){
                            count1 = 0;
                         }
                         if(lineTime == 63){ //se comprueba ganador cuando acabe el tiempo
                              Delay_ms(1000);
                              if(score[0] >  score[1]){
                                  game_over();
                                  Glcd_Write_Text("PC WIN !!", 43, 4,1);
                                  Delay_ms(3000);
                                  Glcd_Fill(0x00);
                                  estado = 0;
                                  break;
                              }
                              else if(score[1] > score[0]){
                                  game_over();
                                  Glcd_Write_Text("Player WIN !!", 36, 4,1);
                                  Delay_ms(3000);
                                  Glcd_Fill(0x00);
                                  estado = 0;
                                  break;
                              }
                              else{
                                 lineTime = 0;
                                 draw_lineTime();
                              }
                         }
                         ////////////////////////////////
                         if(turno_player == 0){
                                 count_op = 0;
                                 while(1){
                                     y = ADC_Read(0);
                                     if( y<= 100 || y>=600){
                                            turno_player = 1;
                                            break;
                                     }
                                     /*if(PORTC.F1 || PORTC.F0){
                                            turno_player = 1;
                                            break;
                                     }*/
                                     if(count_op > 50){
                                            turno_player = 2;
                                            break;
                                     }
                                     count_op ++;
                                 }
                         }
                         else if(turno_player == 1){
                              y = ADC_Read(0);
                              if(y >= 600){   // Hacia abajo
                                  move_players(0,1);
                                  draw_player(jugador[1].x, jugador[1].y);
                             }
                             if(y <= 100){      // Hacia arriba
                                   move_players(1,1);
                                   draw_player(jugador[1].x, jugador[1].y);
                             }

                             /*if(Button(&PORTC, 0, 1, 1)){   // Hacia abajo
                                  move_players(0,1);
                                  draw_player(jugador[1].x, jugador[1].y);
                             }
                             if(Button(&PORTC, 1, 1, 1)){      // Hacia arriba
                                   move_players(1,1);
                                   draw_player(jugador[1].x, jugador[1].y);
                             }*/
                         }
                         else if(turno_player == 2){
                           IA_player();

                         }
                         move_aste();
                         draw_aste();

                         draw_score_1();
                         draw_score_2();

                         count ++;
                         count1 ++;
                         timeCount ++;

                  }
                  break;

           case 2:   // Caso multijugador
                  init();
                  init_aste();
                  
                  // Glcd_Write_Text("Wait",0,0,1); // Indica que se espera a que el otro este listo
                  
                  // Para la seleccion del maestro y del esclavo //
                  if(UART1_Data_Ready()==0){
                     E_M = '1';
                     UART1_Write('2');
                  }
                  else{
                     E_M = UART1_Read();
                  }

                  if(E_M == '2'){
                      Glcd_Write_Text("    ",0,0,1);
                      Glcd_Write_Text("P2",115,0,1);
                      Player = 2;
                  }
                  else{
                      Glcd_Write_Text("    ",0,0,1);
                      Glcd_Write_Text("P1",0,0,1);
                      Player = 1;
                  }
                  /////////////////////////////////////////////////
                  
                  // Inicializaciones //
                  flag_end = '0';
                  lineTime = 0;
                  turno_player = 0;
                  flag = 'S';
                  flagTime = 'S';
                  timeCount = 0;
                  score[0] = 0;
                  score[1] = 0;
                  count = 0;

                  if(Player == 1){   // Es el Maestro (Derecha)
                            draw_lineTime();
                            while(1){
                                if(count > 3){
                                        count = 0;
                                        flag = 'C'; // Indica al esclavo que avancen asteroides.
                                }
                                if (timeCount > 20){
                                        Glcd_Dot(64, lineTime, 0);
                                        lineTime += 1;
                                        timeCount = 0;
                                        flagTime = 'C';
                                }
                                if(turno_player == 0){
                                     y = ADC_Read(0);
                                     while(UART1_Data_Ready() == 0);// No avance hasta que haya algo que leer
                                     
                                     if((UART1_Read() != '0') && (y>100 && y < 600)){
                                              turno_player = 2;
                                     }
                                     else if((UART1_Read() == '0' && (y <= 100 || y>=600))){
                                              turno_player = 1;
                                     }
                                     
                                     /*if((UART1_Read() != '0' && (!PORTC.F0 || !PORTC.F1))){
                                              turno_player = 2;
                                     }
                                     else if((UART1_Read() == '0' && (PORTC.F0 || PORTC.F1))){
                                              turno_player = 1;
                                     }*/
                                }
                                
                                else if(turno_player == 1){
                                     y = ADC_Read(0);
                                     if (y >= 600) { // Abajo
                                        move_players(0,1);
                                        draw_player(jugador[1].x, jugador[1].y);
                                    }
                                    else if(y <= 100){  // Arriba
                                        move_players(1,1);
                                        draw_player(jugador[1].x, jugador[1].y);
                                    }
                                    
                                    /*if (PORTC.F0) { // Abajo
                                        move_players(0,1);
                                        draw_player(jugador[1].x, jugador[1].y);
                                    }
                                    else if(PORTC.F1){  // Arriba
                                        move_players(1,1);
                                        draw_player(jugador[1].x, jugador[1].y);
                                    }*/
                                }
                                // Recibe lo que le envia el esclavo //
                                else if(turno_player == 2){
                                    while(UART1_Data_Ready() == 0);// No avance hasta que haya algo que leer
                                    if(UART1_Read() == '1'){  // Hacia abajo
                                          move_players(0,0);
                                          draw_player(jugador[0].x, jugador[0].y);
                                    }
                                    else if(UART1_Read() == '2'){  // Hacia arriba
                                          move_players(1,0);
                                          draw_player(jugador[0].x, jugador[0].y);
                                    }

                                }
                                
                                move_aste();
                                draw_aste();
                                
                                if(lineTime == 63){
                                    flag_end = '1';
                                }
                                
                                // Ahora enviamos la serie de datos al esclavo //
                                serial_pack_data();
                                send_pack_data(serial_data);  // Aqui espera hasta que datos anteriores se leean
                                while (UART1_Tx_Idle()!=1);  // Ahora espera a que se recibaan los datos actuales

                                draw_score_1();
                                draw_score_2();
                                
                                if(lineTime == 63){ //se comprueba ganador cuando acabe el tiempo
                                    Delay_ms(1000);
                                    if(score[0] >  score[1]){
                                        game_over();
                                        Glcd_Write_Text("YOU LOSE !!", 43, 4,1);
                                        Delay_ms(3000);
                                        Glcd_Fill(0x00);
                                        estado = 0;
                                        break;
                                    }
                                    else if(score[1] > score[0]){
                                        game_over();
                                        Glcd_Write_Text("YOU WIN !!", 36, 4,1);
                                        Delay_ms(3000);
                                        Glcd_Fill(0x00);
                                        estado = 0;
                                        break;
                                    }
                                    else{
                                        game_over();
                                        Glcd_Write_Text("EMPATE !!", 36, 4,1);
                                        Delay_ms(3000);
                                        Glcd_Fill(0x00);
                                        estado = 0;
                                        break;
                                    }

                                }
                                
                                count ++;
                                timeCount ++;
                                flag = 'S';
                                flagTime = 'S';
                            }
                  }
                  break;

       }
    }
}