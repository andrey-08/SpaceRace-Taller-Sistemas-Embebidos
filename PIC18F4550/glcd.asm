
_port_space:

;glcd.c,61 :: 		void port_space(){          // Para mostrar la portada principal
;glcd.c,62 :: 		Glcd_Image(space);
	MOVLW       _space+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_space+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_space+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;glcd.c,63 :: 		Glcd_Write_Text("One player", 35, 4,1);
	MOVLW       ?lstr1_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr1_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       35
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,64 :: 		Glcd_Write_Text("Two players", 32, 6,1);
	MOVLW       ?lstr2_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr2_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       32
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,65 :: 		}
L_end_port_space:
	RETURN      0
; end of _port_space

_game_over:

;glcd.c,67 :: 		void game_over(){
;glcd.c,68 :: 		Glcd_Image(GameOver);
	MOVLW       _GameOver+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_GameOver+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_GameOver+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;glcd.c,69 :: 		}
L_end_game_over:
	RETURN      0
; end of _game_over

_first_CoverP:

;glcd.c,71 :: 		void first_CoverP(){
;glcd.c,72 :: 		Glcd_Image(TEC);
	MOVLW       _TEC+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_TEC+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_TEC+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;glcd.c,73 :: 		Glcd_Write_Text_Adv("Andrey Sequeira", 4, 21);
	MOVLW       ?lstr3_glcd+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr3_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       21
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;glcd.c,74 :: 		Glcd_Write_Text_Adv("Erick Quiros", 4, 31);
	MOVLW       ?lstr4_glcd+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr4_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       31
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;glcd.c,75 :: 		Glcd_Write_Text_Adv("Prof. Ernesto Rivera", 4, 42);
	MOVLW       ?lstr5_glcd+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr5_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       42
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;glcd.c,76 :: 		Glcd_Write_Text_Adv("Taller de Sist. Embebidos", 4, 52);
	MOVLW       ?lstr6_glcd+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr6_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       52
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;glcd.c,77 :: 		Delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_first_CoverP0:
	DECFSZ      R13, 1, 1
	BRA         L_first_CoverP0
	DECFSZ      R12, 1, 1
	BRA         L_first_CoverP0
	DECFSZ      R11, 1, 1
	BRA         L_first_CoverP0
	NOP
;glcd.c,78 :: 		}
L_end_first_CoverP:
	RETURN      0
; end of _first_CoverP

_init:

;glcd.c,80 :: 		void init(){
;glcd.c,83 :: 		jugador[0].x = 42;
	MOVLW       42
	MOVWF       _jugador+0 
;glcd.c,84 :: 		jugador[0].y = 59;
	MOVLW       59
	MOVWF       _jugador+1 
;glcd.c,85 :: 		jugador[0].w = 3;
	MOVLW       3
	MOVWF       _jugador+2 
;glcd.c,86 :: 		jugador[0].h = 4;
	MOVLW       4
	MOVWF       _jugador+3 
;glcd.c,89 :: 		jugador[1].x =  82;
	MOVLW       82
	MOVWF       _jugador+4 
;glcd.c,90 :: 		jugador[1].y = 59;
	MOVLW       59
	MOVWF       _jugador+5 
;glcd.c,91 :: 		jugador[1].w = 3;
	MOVLW       3
	MOVWF       _jugador+6 
;glcd.c,92 :: 		jugador[1].h = 4;
	MOVLW       4
	MOVWF       _jugador+7 
;glcd.c,94 :: 		draw_player(jugador[0].x, jugador[0].y);
	MOVLW       42
	MOVWF       FARG_draw_player_x+0 
	MOVLW       59
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,95 :: 		draw_player(jugador[1].x, jugador[1].y);
	MOVF        _jugador+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+5, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,97 :: 		}
L_end_init:
	RETURN      0
; end of _init

_init_aste:

;glcd.c,99 :: 		void init_aste(){
;glcd.c,100 :: 		aste1[0].x = 16;
	MOVLW       16
	MOVWF       _aste1+0 
;glcd.c,101 :: 		aste1[0].y = 2;
	MOVLW       2
	MOVWF       _aste1+1 
;glcd.c,102 :: 		aste1[1].x = 48;
	MOVLW       48
	MOVWF       _aste1+3 
;glcd.c,103 :: 		aste1[1].y = 2;
	MOVLW       2
	MOVWF       _aste1+4 
;glcd.c,104 :: 		aste1[2].x = 89;
	MOVLW       89
	MOVWF       _aste1+6 
;glcd.c,105 :: 		aste1[2].y = 2;
	MOVLW       2
	MOVWF       _aste1+7 
;glcd.c,106 :: 		aste1[3].x = 124;
	MOVLW       124
	MOVWF       _aste1+9 
;glcd.c,107 :: 		aste1[3].y = 2;
	MOVLW       2
	MOVWF       _aste1+10 
;glcd.c,109 :: 		aste2[0].x = 13;
	MOVLW       13
	MOVWF       _aste2+0 
;glcd.c,110 :: 		aste2[0].y = 12;
	MOVLW       12
	MOVWF       _aste2+1 
;glcd.c,111 :: 		aste2[1].x = 48;
	MOVLW       48
	MOVWF       _aste2+3 
;glcd.c,112 :: 		aste2[1].y = 12;
	MOVLW       12
	MOVWF       _aste2+4 
;glcd.c,113 :: 		aste2[2].x = 78;
	MOVLW       78
	MOVWF       _aste2+6 
;glcd.c,114 :: 		aste2[2].y = 12;
	MOVLW       12
	MOVWF       _aste2+7 
;glcd.c,115 :: 		aste2[3].x = 111;
	MOVLW       111
	MOVWF       _aste2+9 
;glcd.c,116 :: 		aste2[3].y = 12;
	MOVLW       12
	MOVWF       _aste2+10 
;glcd.c,118 :: 		aste3[0].x = 22;
	MOVLW       22
	MOVWF       _aste3+0 
;glcd.c,119 :: 		aste3[0].y = 21;
	MOVLW       21
	MOVWF       _aste3+1 
;glcd.c,120 :: 		aste3[1].x = 62;
	MOVLW       62
	MOVWF       _aste3+3 
;glcd.c,121 :: 		aste3[1].y = 21;
	MOVLW       21
	MOVWF       _aste3+4 
;glcd.c,122 :: 		aste3[2].x = 92;
	MOVLW       92
	MOVWF       _aste3+6 
;glcd.c,123 :: 		aste3[2].y = 21;
	MOVLW       21
	MOVWF       _aste3+7 
;glcd.c,124 :: 		aste3[3].x = 126;
	MOVLW       126
	MOVWF       _aste3+9 
;glcd.c,125 :: 		aste3[3].y = 21;
	MOVLW       21
	MOVWF       _aste3+10 
;glcd.c,127 :: 		aste5[0].x = 17;
	MOVLW       17
	MOVWF       _aste5+0 
;glcd.c,128 :: 		aste5[0].y = 35;
	MOVLW       35
	MOVWF       _aste5+1 
;glcd.c,129 :: 		aste5[1].x = 61;
	MOVLW       61
	MOVWF       _aste5+3 
;glcd.c,130 :: 		aste5[1].y = 35;
	MOVLW       35
	MOVWF       _aste5+4 
;glcd.c,131 :: 		aste5[2].x = 94;
	MOVLW       94
	MOVWF       _aste5+6 
;glcd.c,132 :: 		aste5[2].y = 35;
	MOVLW       35
	MOVWF       _aste5+7 
;glcd.c,133 :: 		aste5[3].x = 118;
	MOVLW       118
	MOVWF       _aste5+9 
;glcd.c,134 :: 		aste5[3].y = 35;
	MOVLW       35
	MOVWF       _aste5+10 
;glcd.c,136 :: 		aste7[0].x = 7;
	MOVLW       7
	MOVWF       _aste7+0 
;glcd.c,137 :: 		aste7[0].y = 56;
	MOVLW       56
	MOVWF       _aste7+1 
;glcd.c,138 :: 		aste7[1].x = 41;
	MOVLW       41
	MOVWF       _aste7+3 
;glcd.c,139 :: 		aste7[1].y = 56;
	MOVLW       56
	MOVWF       _aste7+4 
;glcd.c,140 :: 		aste7[2].x = 74;
	MOVLW       74
	MOVWF       _aste7+6 
;glcd.c,141 :: 		aste7[2].y = 56;
	MOVLW       56
	MOVWF       _aste7+7 
;glcd.c,142 :: 		aste7[3].x = 107;
	MOVLW       107
	MOVWF       _aste7+9 
;glcd.c,143 :: 		aste7[3].y = 56;
	MOVLW       56
	MOVWF       _aste7+10 
;glcd.c,146 :: 		asteD1[3].x = 27;
	MOVLW       27
	MOVWF       _asteD1+9 
;glcd.c,147 :: 		asteD1[3].y = 6;
	MOVLW       6
	MOVWF       _asteD1+10 
;glcd.c,148 :: 		asteD1[2].x = 63;
	MOVLW       63
	MOVWF       _asteD1+6 
;glcd.c,149 :: 		asteD1[2].y = 6;
	MOVLW       6
	MOVWF       _asteD1+7 
;glcd.c,150 :: 		asteD1[1].x = 100;
	MOVLW       100
	MOVWF       _asteD1+3 
;glcd.c,151 :: 		asteD1[1].y = 6;
	MOVLW       6
	MOVWF       _asteD1+4 
;glcd.c,152 :: 		asteD1[0].x = 123;
	MOVLW       123
	MOVWF       _asteD1+0 
;glcd.c,153 :: 		asteD1[0].y = 6;
	MOVLW       6
	MOVWF       _asteD1+1 
;glcd.c,155 :: 		asteD2[2].x = 37;
	MOVLW       37
	MOVWF       _asteD2+6 
;glcd.c,156 :: 		asteD2[2].y = 16;
	MOVLW       16
	MOVWF       _asteD2+7 
;glcd.c,157 :: 		asteD2[1].x = 84;
	MOVLW       84
	MOVWF       _asteD2+3 
;glcd.c,158 :: 		asteD2[1].y = 16;
	MOVLW       16
	MOVWF       _asteD2+4 
;glcd.c,159 :: 		asteD2[0].x = 126;
	MOVLW       126
	MOVWF       _asteD2+0 
;glcd.c,160 :: 		asteD2[0].y = 16;
	MOVLW       16
	MOVWF       _asteD2+1 
;glcd.c,162 :: 		asteD4[3].x = 19;
	MOVLW       19
	MOVWF       _asteD4+9 
;glcd.c,163 :: 		asteD4[3].y = 28;
	MOVLW       28
	MOVWF       _asteD4+10 
;glcd.c,164 :: 		asteD4[2].x = 49;
	MOVLW       49
	MOVWF       _asteD4+6 
;glcd.c,165 :: 		asteD4[2].y = 28;
	MOVLW       28
	MOVWF       _asteD4+7 
;glcd.c,166 :: 		asteD4[1].x = 83;
	MOVLW       83
	MOVWF       _asteD4+3 
;glcd.c,167 :: 		asteD4[1].y = 28;
	MOVLW       28
	MOVWF       _asteD4+4 
;glcd.c,168 :: 		asteD4[0].x = 119;
	MOVLW       119
	MOVWF       _asteD4+0 
;glcd.c,169 :: 		asteD4[0].y = 28;
	MOVLW       28
	MOVWF       _asteD4+1 
;glcd.c,171 :: 		asteD5[2].x = 16;
	MOVLW       16
	MOVWF       _asteD5+6 
;glcd.c,172 :: 		asteD5[2].y = 40;
	MOVLW       40
	MOVWF       _asteD5+7 
;glcd.c,173 :: 		asteD5[1].x = 72;
	MOVLW       72
	MOVWF       _asteD5+3 
;glcd.c,174 :: 		asteD5[1].y = 40;
	MOVLW       40
	MOVWF       _asteD5+4 
;glcd.c,175 :: 		asteD5[0].x = 121;
	MOVLW       121
	MOVWF       _asteD5+0 
;glcd.c,176 :: 		asteD5[0].y = 40;
	MOVLW       40
	MOVWF       _asteD5+1 
;glcd.c,178 :: 		asteD6[3].x = 29;
	MOVLW       29
	MOVWF       _asteD6+9 
;glcd.c,179 :: 		asteD6[3].y = 49;
	MOVLW       49
	MOVWF       _asteD6+10 
;glcd.c,180 :: 		asteD6[2].x = 60;
	MOVLW       60
	MOVWF       _asteD6+6 
;glcd.c,181 :: 		asteD6[2].y = 49;
	MOVLW       49
	MOVWF       _asteD6+7 
;glcd.c,182 :: 		asteD6[1].x = 90;
	MOVLW       90
	MOVWF       _asteD6+3 
;glcd.c,183 :: 		asteD6[1].y = 49;
	MOVLW       49
	MOVWF       _asteD6+4 
;glcd.c,184 :: 		asteD6[0].x = 120;
	MOVLW       120
	MOVWF       _asteD6+0 
;glcd.c,185 :: 		asteD6[0].y = 49;
	MOVLW       49
	MOVWF       _asteD6+1 
;glcd.c,187 :: 		draw_aste();
	CALL        _draw_aste+0, 0
;glcd.c,188 :: 		}
L_end_init_aste:
	RETURN      0
; end of _init_aste

_draw_player:

;glcd.c,190 :: 		void draw_player(unsigned short x, unsigned short y){
;glcd.c,191 :: 		Glcd_Dot(x+2, y, 1);
	MOVLW       2
	ADDWF       FARG_draw_player_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        FARG_draw_player_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,192 :: 		Glcd_Dot(x+2, y+2, 1);
	MOVLW       2
	ADDWF       FARG_draw_player_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       2
	ADDWF       FARG_draw_player_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,193 :: 		Glcd_Dot(x+4, y+4, 1);
	MOVLW       4
	ADDWF       FARG_draw_player_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       4
	ADDWF       FARG_draw_player_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,194 :: 		Glcd_Dot(x, y+4, 1);
	MOVF        FARG_draw_player_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       4
	ADDWF       FARG_draw_player_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,195 :: 		}
L_end_draw_player:
	RETURN      0
; end of _draw_player

_draw_aste:

;glcd.c,197 :: 		void draw_aste(){
;glcd.c,199 :: 		for(i = 0; i<4; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste1:
	MOVLW       4
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste2
;glcd.c,200 :: 		if(aste1[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste4
;glcd.c,201 :: 		Glcd_Dot(aste1[i].x, aste1[i].y, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,202 :: 		}
L_draw_aste4:
;glcd.c,203 :: 		if(aste1[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste5
;glcd.c,204 :: 		Glcd_Dot(aste1[i].old_x, aste1[i].y, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,205 :: 		}
L_draw_aste5:
;glcd.c,199 :: 		for(i = 0; i<4; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,206 :: 		}
	GOTO        L_draw_aste1
L_draw_aste2:
;glcd.c,207 :: 		for(i = 0; i<4; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste6:
	MOVLW       4
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste7
;glcd.c,208 :: 		if(aste2[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste9
;glcd.c,209 :: 		Glcd_Dot(aste2[i].x, aste2[i].y, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,210 :: 		}
L_draw_aste9:
;glcd.c,211 :: 		if(aste2[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste10
;glcd.c,212 :: 		Glcd_Dot(aste2[i].old_x, aste2[i].y, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,213 :: 		}
L_draw_aste10:
;glcd.c,207 :: 		for(i = 0; i<4; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,214 :: 		}
	GOTO        L_draw_aste6
L_draw_aste7:
;glcd.c,215 :: 		for(i = 0; i<4; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste11:
	MOVLW       4
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste12
;glcd.c,216 :: 		if(aste3[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste14
;glcd.c,217 :: 		Glcd_Dot(aste3[i].x, aste3[i].y, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,218 :: 		}
L_draw_aste14:
;glcd.c,219 :: 		if(aste3[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste15
;glcd.c,220 :: 		Glcd_Dot(aste3[i].old_x, aste3[i].y, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,221 :: 		}
L_draw_aste15:
;glcd.c,215 :: 		for(i = 0; i<4; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,222 :: 		}
	GOTO        L_draw_aste11
L_draw_aste12:
;glcd.c,223 :: 		for(i = 0; i<4; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste16:
	MOVLW       4
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste17
;glcd.c,224 :: 		if(aste5[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste19
;glcd.c,225 :: 		Glcd_Dot(aste5[i].x, aste5[i].y, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,226 :: 		}
L_draw_aste19:
;glcd.c,227 :: 		if(aste5[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste20
;glcd.c,228 :: 		Glcd_Dot(aste5[i].old_x, aste5[i].y, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,229 :: 		}
L_draw_aste20:
;glcd.c,223 :: 		for(i = 0; i<4; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,230 :: 		}
	GOTO        L_draw_aste16
L_draw_aste17:
;glcd.c,231 :: 		for(i = 0; i<4; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste21:
	MOVLW       4
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste22
;glcd.c,232 :: 		if(aste7[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste24
;glcd.c,233 :: 		Glcd_Dot(aste7[i].x, aste7[i].y, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,234 :: 		}
L_draw_aste24:
;glcd.c,235 :: 		if(aste7[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste25
;glcd.c,236 :: 		Glcd_Dot(aste7[i].old_x, aste7[i].y, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,237 :: 		}
L_draw_aste25:
;glcd.c,231 :: 		for(i = 0; i<4; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,238 :: 		}
	GOTO        L_draw_aste21
L_draw_aste22:
;glcd.c,241 :: 		for(i = 0; i<4; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste26:
	MOVLW       4
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste27
;glcd.c,242 :: 		if(asteD1[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste29
;glcd.c,243 :: 		Glcd_Dot(asteD1[i].x, 6, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,244 :: 		}
L_draw_aste29:
;glcd.c,245 :: 		if(asteD1[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste30
;glcd.c,246 :: 		Glcd_Dot(asteD1[i].old_x, 6, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,247 :: 		}
L_draw_aste30:
;glcd.c,241 :: 		for(i = 0; i<4; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,248 :: 		}
	GOTO        L_draw_aste26
L_draw_aste27:
;glcd.c,249 :: 		for(i = 0; i<3; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste31:
	MOVLW       3
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste32
;glcd.c,250 :: 		if(asteD2[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste34
;glcd.c,251 :: 		Glcd_Dot(asteD2[i].x, 16, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       16
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,252 :: 		}
L_draw_aste34:
;glcd.c,253 :: 		if(asteD2[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste35
;glcd.c,254 :: 		Glcd_Dot(asteD2[i].old_x, 16, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       16
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,255 :: 		}
L_draw_aste35:
;glcd.c,249 :: 		for(i = 0; i<3; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,256 :: 		}
	GOTO        L_draw_aste31
L_draw_aste32:
;glcd.c,258 :: 		for(i = 0; i<4; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste36:
	MOVLW       4
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste37
;glcd.c,259 :: 		if(asteD4[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste39
;glcd.c,260 :: 		Glcd_Dot(asteD4[i].x, 28, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       28
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,261 :: 		}
L_draw_aste39:
;glcd.c,262 :: 		if(asteD4[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste40
;glcd.c,263 :: 		Glcd_Dot(asteD4[i].old_x, 28, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       28
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,264 :: 		}
L_draw_aste40:
;glcd.c,258 :: 		for(i = 0; i<4; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,265 :: 		}
	GOTO        L_draw_aste36
L_draw_aste37:
;glcd.c,266 :: 		for(i = 0; i<3; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste41:
	MOVLW       3
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste42
;glcd.c,267 :: 		if(asteD5[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste44
;glcd.c,268 :: 		Glcd_Dot(asteD5[i].x, 40, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       40
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,269 :: 		}
L_draw_aste44:
;glcd.c,270 :: 		if(asteD5[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste45
;glcd.c,271 :: 		Glcd_Dot(asteD5[i].old_x, 40, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       40
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,272 :: 		}
L_draw_aste45:
;glcd.c,266 :: 		for(i = 0; i<3; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,274 :: 		}
	GOTO        L_draw_aste41
L_draw_aste42:
;glcd.c,275 :: 		for(i = 0; i<4; i++){
	CLRF        draw_aste_i_L0+0 
L_draw_aste46:
	MOVLW       4
	SUBWF       draw_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_aste47
;glcd.c,276 :: 		if(asteD6[i].x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste49
;glcd.c,277 :: 		Glcd_Dot(asteD6[i].x, 49, 1);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       49
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,278 :: 		}
L_draw_aste49:
;glcd.c,279 :: 		if(asteD6[i].old_x != 64){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	XORLW       64
	BTFSC       STATUS+0, 2 
	GOTO        L_draw_aste50
;glcd.c,280 :: 		Glcd_Dot(asteD6[i].old_x, 49, 0);
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        draw_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       49
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,281 :: 		}
L_draw_aste50:
;glcd.c,275 :: 		for(i = 0; i<4; i++){
	INCF        draw_aste_i_L0+0, 1 
;glcd.c,283 :: 		}
	GOTO        L_draw_aste46
L_draw_aste47:
;glcd.c,285 :: 		}
L_end_draw_aste:
	RETURN      0
; end of _draw_aste

_draw_score_1:

;glcd.c,287 :: 		void draw_score_1(){
;glcd.c,288 :: 		if(score[1] == 0){
	MOVF        _score+1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_151
;glcd.c,289 :: 		Glcd_Write_Text("0", 98 , 7, 1);
	MOVLW       ?lstr7_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr7_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,290 :: 		}
L_draw_score_151:
;glcd.c,291 :: 		if(score[1] == 1){
	MOVF        _score+1, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_152
;glcd.c,292 :: 		Glcd_Write_Text("1", 98 , 7, 1);
	MOVLW       ?lstr8_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr8_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,293 :: 		}
L_draw_score_152:
;glcd.c,294 :: 		if(score[1] == 2){
	MOVF        _score+1, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_153
;glcd.c,295 :: 		Glcd_Write_Text("2", 98 , 7, 1);
	MOVLW       ?lstr9_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr9_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,296 :: 		}
L_draw_score_153:
;glcd.c,297 :: 		if(score[1] == 3){
	MOVF        _score+1, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_154
;glcd.c,298 :: 		Glcd_Write_Text("3", 98 , 7, 1);
	MOVLW       ?lstr10_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr10_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,299 :: 		}
L_draw_score_154:
;glcd.c,300 :: 		if(score[1] == 4){
	MOVF        _score+1, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_155
;glcd.c,301 :: 		Glcd_Write_Text("4", 98 , 7, 1);
	MOVLW       ?lstr11_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr11_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,302 :: 		}
L_draw_score_155:
;glcd.c,303 :: 		if(score[1] == 5){
	MOVF        _score+1, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_156
;glcd.c,304 :: 		Glcd_Write_Text("5", 98 , 7, 1);
	MOVLW       ?lstr12_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr12_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,305 :: 		}
L_draw_score_156:
;glcd.c,306 :: 		if(score[1] == 6){
	MOVF        _score+1, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_157
;glcd.c,307 :: 		Glcd_Write_Text("6", 98 , 7, 1);
	MOVLW       ?lstr13_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr13_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,308 :: 		}
L_draw_score_157:
;glcd.c,309 :: 		if(score[1] == 7){
	MOVF        _score+1, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_158
;glcd.c,310 :: 		Glcd_Write_Text("7", 98 , 7, 1);
	MOVLW       ?lstr14_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr14_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,311 :: 		}
L_draw_score_158:
;glcd.c,312 :: 		if(score[1] == 8){
	MOVF        _score+1, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_159
;glcd.c,313 :: 		Glcd_Write_Text("8", 98 , 7, 1);
	MOVLW       ?lstr15_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr15_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,314 :: 		}
L_draw_score_159:
;glcd.c,315 :: 		if(score[1] == 9){
	MOVF        _score+1, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_160
;glcd.c,316 :: 		Glcd_Write_Text("9", 98 , 7, 1);
	MOVLW       ?lstr16_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr16_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       98
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,317 :: 		}
L_draw_score_160:
;glcd.c,318 :: 		}
L_end_draw_score_1:
	RETURN      0
; end of _draw_score_1

_draw_score_2:

;glcd.c,320 :: 		void draw_score_2(){
;glcd.c,321 :: 		if(score[0] == 0){
	MOVF        _score+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_261
;glcd.c,322 :: 		Glcd_Write_Text("0", 25 , 7, 1);
	MOVLW       ?lstr17_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr17_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,323 :: 		}
L_draw_score_261:
;glcd.c,324 :: 		if(score[0] == 1){
	MOVF        _score+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_262
;glcd.c,325 :: 		Glcd_Write_Text("1", 25 , 7, 1);
	MOVLW       ?lstr18_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr18_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,326 :: 		}
L_draw_score_262:
;glcd.c,327 :: 		if(score[0] == 2){
	MOVF        _score+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_263
;glcd.c,328 :: 		Glcd_Write_Text("2", 25 , 7, 1);
	MOVLW       ?lstr19_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr19_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,329 :: 		}
L_draw_score_263:
;glcd.c,330 :: 		if(score[0] == 3){
	MOVF        _score+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_264
;glcd.c,331 :: 		Glcd_Write_Text("3", 25 , 7, 1);
	MOVLW       ?lstr20_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr20_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,332 :: 		}
L_draw_score_264:
;glcd.c,333 :: 		if(score[0] == 4){
	MOVF        _score+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_265
;glcd.c,334 :: 		Glcd_Write_Text("4", 25 , 7, 1);
	MOVLW       ?lstr21_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr21_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,335 :: 		}
L_draw_score_265:
;glcd.c,336 :: 		if(score[0] == 5){
	MOVF        _score+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_266
;glcd.c,337 :: 		Glcd_Write_Text("5", 25 , 7, 1);
	MOVLW       ?lstr22_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr22_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,338 :: 		}
L_draw_score_266:
;glcd.c,339 :: 		if(score[0] == 6){
	MOVF        _score+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_267
;glcd.c,340 :: 		Glcd_Write_Text("6", 25 , 7, 1);
	MOVLW       ?lstr23_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr23_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,341 :: 		}
L_draw_score_267:
;glcd.c,342 :: 		if(score[0] == 7){
	MOVF        _score+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_268
;glcd.c,343 :: 		Glcd_Write_Text("7", 25 , 7, 1);
	MOVLW       ?lstr24_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr24_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,344 :: 		}
L_draw_score_268:
;glcd.c,345 :: 		if(score[0] == 8){
	MOVF        _score+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_269
;glcd.c,346 :: 		Glcd_Write_Text("8", 25 , 7, 1);
	MOVLW       ?lstr25_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr25_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,347 :: 		}
L_draw_score_269:
;glcd.c,348 :: 		if(score[0] == 9){
	MOVF        _score+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_draw_score_270
;glcd.c,349 :: 		Glcd_Write_Text("9", 25 , 7, 1);
	MOVLW       ?lstr26_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr26_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       25
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,350 :: 		}
L_draw_score_270:
;glcd.c,352 :: 		}
L_end_draw_score_2:
	RETURN      0
; end of _draw_score_2

_borrar_player:

;glcd.c,354 :: 		void borrar_player(unsigned short x, unsigned short y){
;glcd.c,355 :: 		Glcd_Dot(x+2, y, 0);
	MOVLW       2
	ADDWF       FARG_borrar_player_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        FARG_borrar_player_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,356 :: 		Glcd_Dot(x+2, y+2, 0);
	MOVLW       2
	ADDWF       FARG_borrar_player_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       2
	ADDWF       FARG_borrar_player_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,357 :: 		Glcd_Dot(x+4, y+4, 0);
	MOVLW       4
	ADDWF       FARG_borrar_player_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       4
	ADDWF       FARG_borrar_player_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,358 :: 		Glcd_Dot(x, y+4, 0);
	MOVF        FARG_borrar_player_x+0, 0 
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVLW       4
	ADDWF       FARG_borrar_player_y+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,359 :: 		}
L_end_borrar_player:
	RETURN      0
; end of _borrar_player

_move_players:

;glcd.c,361 :: 		void move_players(unsigned short direc, unsigned short player){
;glcd.c,362 :: 		if(direc == 0){ // Direccion hacia abajo
	MOVF        FARG_move_players_direc+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_move_players71
;glcd.c,363 :: 		if(jugador[player].y >= 63 - jugador[player].h){
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       3
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	SUBLW       63
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	SUBWFB      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_players521
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_players521:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_players72
;glcd.c,364 :: 		borrar_player(jugador[player].x, jugador[player].y);
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_borrar_player_y+0 
	CALL        _borrar_player+0, 0
;glcd.c,365 :: 		jugador[player].y = 63 - jugador[player].h;
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       3
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	SUBLW       63
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,366 :: 		}
	GOTO        L_move_players73
L_move_players72:
;glcd.c,368 :: 		borrar_player(jugador[player].x, jugador[player].y);
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_borrar_player_y+0 
	CALL        _borrar_player+0, 0
;glcd.c,369 :: 		jugador[player].y += 2;
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVLW       2
	ADDWF       POSTINC0+0, 0 
	MOVWF       R0 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,370 :: 		}
L_move_players73:
;glcd.c,371 :: 		}
L_move_players71:
;glcd.c,372 :: 		if(direc == 1){  // Direccion hacia arriba
	MOVF        FARG_move_players_direc+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_players74
;glcd.c,373 :: 		if(jugador[player].y <= 1){
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	SUBLW       1
	BTFSS       STATUS+0, 0 
	GOTO        L_move_players75
;glcd.c,374 :: 		borrar_player(jugador[player].x, jugador[player].y);
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_borrar_player_y+0 
	CALL        _borrar_player+0, 0
;glcd.c,375 :: 		jugador[player].y = 59;
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       59
	MOVWF       POSTINC1+0 
;glcd.c,376 :: 		score[player] += 1;
	MOVLW       _score+0
	MOVWF       R1 
	MOVLW       hi_addr(_score+0)
	MOVWF       R2 
	MOVF        FARG_move_players_player+0, 0 
	ADDWF       R1, 1 
	BTFSC       STATUS+0, 0 
	INCF        R2, 1 
	MOVFF       R1, FSR0L+0
	MOVFF       R2, FSR0H+0
	MOVF        POSTINC0+0, 0 
	ADDLW       1
	MOVWF       R0 
	MOVFF       R1, FSR1L+0
	MOVFF       R2, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,377 :: 		turno_player = 0;
	CLRF        _turno_player+0 
;glcd.c,378 :: 		}
	GOTO        L_move_players76
L_move_players75:
;glcd.c,380 :: 		borrar_player(jugador[player].x, jugador[player].y);
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_borrar_player_y+0 
	CALL        _borrar_player+0, 0
;glcd.c,381 :: 		jugador[player].y -= 2;
	MOVF        FARG_move_players_player+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _jugador+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_jugador+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVLW       2
	SUBWF       POSTINC0+0, 0 
	MOVWF       R0 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,382 :: 		}
L_move_players76:
;glcd.c,383 :: 		}
L_move_players74:
;glcd.c,384 :: 		}
L_end_move_players:
	RETURN      0
; end of _move_players

_move_aste:

;glcd.c,386 :: 		void move_aste(){
;glcd.c,388 :: 		if (count == 3){
	MOVF        _count+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste77
;glcd.c,389 :: 		for(i = 0; i <4; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste78:
	MOVLW       4
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste79
;glcd.c,390 :: 		aste1[i].old_x = aste1[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,391 :: 		aste1[i].x -= 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	DECF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,392 :: 		if(aste1[i].x<=1){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste81
;glcd.c,393 :: 		aste1[i].x = 127;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       127
	MOVWF       POSTINC1+0 
;glcd.c,394 :: 		}
L_move_aste81:
;glcd.c,395 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste82
;glcd.c,396 :: 		if((aste1[i].y >= jugador[1].y) &&(aste1[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste523
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste523:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste85
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste524
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste524:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste85
L__move_aste483:
;glcd.c,397 :: 		check_coll(jugador[1], aste1[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste86:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste86
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste87:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste87
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,398 :: 		}
L_move_aste85:
;glcd.c,399 :: 		}
	GOTO        L_move_aste88
L_move_aste82:
;glcd.c,400 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste89
;glcd.c,401 :: 		if((aste1[i].y >= jugador[0].y) &&(aste1[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste525
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste525:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste92
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste526
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste526:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste92
L__move_aste482:
;glcd.c,402 :: 		check_coll(jugador[0], aste1[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste93:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste93
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste94:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste94
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,403 :: 		}
L_move_aste92:
;glcd.c,404 :: 		}
L_move_aste89:
L_move_aste88:
;glcd.c,389 :: 		for(i = 0; i <4; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,405 :: 		}
	GOTO        L_move_aste78
L_move_aste79:
;glcd.c,406 :: 		for(i = 0; i <4; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste95:
	MOVLW       4
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste96
;glcd.c,407 :: 		aste2[i].old_x = aste2[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,408 :: 		aste2[i].x -= 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	DECF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,409 :: 		if(aste2[i].x<=1){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste98
;glcd.c,410 :: 		aste2[i].x = 127;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       127
	MOVWF       POSTINC1+0 
;glcd.c,411 :: 		}
L_move_aste98:
;glcd.c,412 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste99
;glcd.c,413 :: 		if((aste2[i].y >= jugador[1].y) &&(aste2[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste527
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste527:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste102
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste528
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste528:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste102
L__move_aste481:
;glcd.c,414 :: 		check_coll(jugador[1], aste2[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste103:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste103
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste104:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste104
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,415 :: 		}
L_move_aste102:
;glcd.c,416 :: 		}
	GOTO        L_move_aste105
L_move_aste99:
;glcd.c,417 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste106
;glcd.c,418 :: 		if((aste2[i].y >= jugador[0].y) &&(aste2[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste529
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste529:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste109
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste530
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste530:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste109
L__move_aste480:
;glcd.c,419 :: 		check_coll(jugador[0], aste2[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste110:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste110
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste111:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste111
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,420 :: 		}
L_move_aste109:
;glcd.c,421 :: 		}
L_move_aste106:
L_move_aste105:
;glcd.c,406 :: 		for(i = 0; i <4; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,422 :: 		}
	GOTO        L_move_aste95
L_move_aste96:
;glcd.c,423 :: 		for(i = 0; i <4; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste112:
	MOVLW       4
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste113
;glcd.c,424 :: 		aste3[i].old_x = aste3[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,425 :: 		aste3[i].x -= 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	DECF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,426 :: 		if(aste3[i].x<=1){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste115
;glcd.c,427 :: 		aste3[i].x = 127;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       127
	MOVWF       POSTINC1+0 
;glcd.c,428 :: 		}
L_move_aste115:
;glcd.c,429 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste116
;glcd.c,430 :: 		if((aste3[i].y >= jugador[1].y) &&(aste3[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste531
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste531:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste119
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste532
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste532:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste119
L__move_aste479:
;glcd.c,431 :: 		check_coll(jugador[1], aste3[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste120:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste120
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste121:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste121
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,432 :: 		}
L_move_aste119:
;glcd.c,433 :: 		}
	GOTO        L_move_aste122
L_move_aste116:
;glcd.c,434 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste123
;glcd.c,435 :: 		if((aste3[i].y >= jugador[0].y) &&(aste3[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste533
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste533:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste126
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste534
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste534:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste126
L__move_aste478:
;glcd.c,436 :: 		check_coll(jugador[0], aste3[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste127:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste127
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste128:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste128
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,437 :: 		}
L_move_aste126:
;glcd.c,438 :: 		}
L_move_aste123:
L_move_aste122:
;glcd.c,423 :: 		for(i = 0; i <4; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,439 :: 		}
	GOTO        L_move_aste112
L_move_aste113:
;glcd.c,440 :: 		for(i = 0; i <4; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste129:
	MOVLW       4
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste130
;glcd.c,441 :: 		aste5[i].old_x = aste5[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,442 :: 		aste5[i].x -= 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	DECF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,443 :: 		if(aste5[i].x<=1){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste132
;glcd.c,444 :: 		aste5[i].x = 127;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       127
	MOVWF       POSTINC1+0 
;glcd.c,445 :: 		}
L_move_aste132:
;glcd.c,446 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste133
;glcd.c,447 :: 		if((aste5[i].y >= jugador[1].y) &&(aste5[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste535
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste535:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste136
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste536
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste536:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste136
L__move_aste477:
;glcd.c,448 :: 		check_coll(jugador[1], aste5[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste137:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste137
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste138:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste138
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,449 :: 		}
L_move_aste136:
;glcd.c,450 :: 		}
	GOTO        L_move_aste139
L_move_aste133:
;glcd.c,451 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste140
;glcd.c,452 :: 		if((aste5[i].y >= jugador[0].y) &&(aste5[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste537
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste537:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste143
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste538
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste538:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste143
L__move_aste476:
;glcd.c,453 :: 		check_coll(jugador[0], aste5[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste144:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste144
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste145:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste145
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,454 :: 		}
L_move_aste143:
;glcd.c,455 :: 		}
L_move_aste140:
L_move_aste139:
;glcd.c,440 :: 		for(i = 0; i <4; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,456 :: 		}
	GOTO        L_move_aste129
L_move_aste130:
;glcd.c,457 :: 		for(i = 0; i <4; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste146:
	MOVLW       4
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste147
;glcd.c,458 :: 		aste7[i].old_x = aste7[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,459 :: 		aste7[i].x -= 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	DECF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,460 :: 		if(aste7[i].x<=1){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste149
;glcd.c,461 :: 		aste7[i].x = 127;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       127
	MOVWF       POSTINC1+0 
;glcd.c,462 :: 		}
L_move_aste149:
;glcd.c,463 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste150
;glcd.c,464 :: 		if((aste7[i].y >= jugador[1].y) &&(aste7[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste539
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste539:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste153
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste540
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste540:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste153
L__move_aste475:
;glcd.c,465 :: 		check_coll(jugador[1], aste7[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste154:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste154
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste155:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste155
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,466 :: 		}
L_move_aste153:
;glcd.c,467 :: 		}
	GOTO        L_move_aste156
L_move_aste150:
;glcd.c,468 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste157
;glcd.c,469 :: 		if((aste7[i].y >= jugador[0].y) &&(aste7[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste541
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste541:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste160
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste542
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste542:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste160
L__move_aste474:
;glcd.c,470 :: 		check_coll(jugador[0], aste7[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste161:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste161
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste162:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste162
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,471 :: 		}
L_move_aste160:
;glcd.c,472 :: 		}
L_move_aste157:
L_move_aste156:
;glcd.c,457 :: 		for(i = 0; i <4; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,473 :: 		}
	GOTO        L_move_aste146
L_move_aste147:
;glcd.c,475 :: 		for(i = 0; i <4; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste163:
	MOVLW       4
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste164
;glcd.c,476 :: 		asteD1[i].old_x = asteD1[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,477 :: 		asteD1[i].x += 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	INCF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,478 :: 		if(asteD1[i].x > 126){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       126
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste166
;glcd.c,479 :: 		asteD1[i].x = 2;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       2
	MOVWF       POSTINC1+0 
;glcd.c,480 :: 		}
L_move_aste166:
;glcd.c,481 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste167
;glcd.c,482 :: 		if((asteD1[i].y >= jugador[1].y) &&(asteD1[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste543
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste543:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste170
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste544
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste544:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste170
L__move_aste473:
;glcd.c,483 :: 		check_coll(jugador[1], asteD1[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste171:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste171
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste172:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste172
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,484 :: 		}
L_move_aste170:
;glcd.c,485 :: 		}
	GOTO        L_move_aste173
L_move_aste167:
;glcd.c,486 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste174
;glcd.c,487 :: 		if((asteD1[i].y >= jugador[0].y) &&(asteD1[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste545
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste545:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste177
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste546
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste546:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste177
L__move_aste472:
;glcd.c,488 :: 		check_coll(jugador[0], asteD1[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste178:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste178
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste179:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste179
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,489 :: 		}
L_move_aste177:
;glcd.c,490 :: 		}
L_move_aste174:
L_move_aste173:
;glcd.c,475 :: 		for(i = 0; i <4; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,491 :: 		}
	GOTO        L_move_aste163
L_move_aste164:
;glcd.c,492 :: 		for(i = 0; i <3; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste180:
	MOVLW       3
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste181
;glcd.c,493 :: 		asteD2[i].old_x = asteD2[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,494 :: 		asteD2[i].x += 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	INCF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,495 :: 		if(asteD2[i].x > 126){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       126
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste183
;glcd.c,496 :: 		asteD2[i].x = 2;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       2
	MOVWF       POSTINC1+0 
;glcd.c,497 :: 		}
L_move_aste183:
;glcd.c,498 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste184
;glcd.c,499 :: 		if((asteD2[i].y >= jugador[1].y) &&(asteD2[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste547
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste547:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste187
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste548
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste548:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste187
L__move_aste471:
;glcd.c,500 :: 		check_coll(jugador[1], asteD2[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste188:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste188
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste189:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste189
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,501 :: 		}
L_move_aste187:
;glcd.c,502 :: 		}
	GOTO        L_move_aste190
L_move_aste184:
;glcd.c,503 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste191
;glcd.c,504 :: 		if((asteD2[i].y >= jugador[0].y) &&(asteD2[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste549
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste549:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste194
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste550
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste550:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste194
L__move_aste470:
;glcd.c,505 :: 		check_coll(jugador[0], asteD2[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste195:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste195
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste196:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste196
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,506 :: 		}
L_move_aste194:
;glcd.c,507 :: 		}
L_move_aste191:
L_move_aste190:
;glcd.c,492 :: 		for(i = 0; i <3; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,508 :: 		}
	GOTO        L_move_aste180
L_move_aste181:
;glcd.c,510 :: 		for(i = 0; i <4; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste197:
	MOVLW       4
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste198
;glcd.c,511 :: 		asteD4[i].old_x = asteD4[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,512 :: 		asteD4[i].x += 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	INCF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,513 :: 		if(asteD4[i].x > 126){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       126
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste200
;glcd.c,514 :: 		asteD4[i].x = 2;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       2
	MOVWF       POSTINC1+0 
;glcd.c,515 :: 		}
L_move_aste200:
;glcd.c,516 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste201
;glcd.c,517 :: 		if((asteD4[i].y >= jugador[1].y) &&(asteD4[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste551
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste551:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste204
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste552
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste552:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste204
L__move_aste469:
;glcd.c,518 :: 		check_coll(jugador[1], asteD4[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste205:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste205
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste206:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste206
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,519 :: 		}
L_move_aste204:
;glcd.c,520 :: 		}
	GOTO        L_move_aste207
L_move_aste201:
;glcd.c,521 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste208
;glcd.c,522 :: 		if((asteD4[i].y >= jugador[0].y) &&(asteD4[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste553
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste553:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste211
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste554
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste554:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste211
L__move_aste468:
;glcd.c,523 :: 		check_coll(jugador[0], asteD4[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste212:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste212
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste213:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste213
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,524 :: 		}
L_move_aste211:
;glcd.c,525 :: 		}
L_move_aste208:
L_move_aste207:
;glcd.c,510 :: 		for(i = 0; i <4; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,526 :: 		}
	GOTO        L_move_aste197
L_move_aste198:
;glcd.c,527 :: 		for(i = 0; i <3; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste214:
	MOVLW       3
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste215
;glcd.c,528 :: 		asteD5[i].old_x = asteD5[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,529 :: 		asteD5[i].x += 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	INCF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,530 :: 		if(asteD5[i].x > 126){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       126
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste217
;glcd.c,531 :: 		asteD5[i].x = 2;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       2
	MOVWF       POSTINC1+0 
;glcd.c,532 :: 		}
L_move_aste217:
;glcd.c,533 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste218
;glcd.c,534 :: 		if((asteD5[i].y >= jugador[1].y) &&(asteD5[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste555
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste555:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste221
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste556
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste556:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste221
L__move_aste467:
;glcd.c,535 :: 		check_coll(jugador[1], asteD5[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste222:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste222
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste223:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste223
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,536 :: 		}
L_move_aste221:
;glcd.c,537 :: 		}
	GOTO        L_move_aste224
L_move_aste218:
;glcd.c,538 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste225
;glcd.c,539 :: 		if((asteD5[i].y >= jugador[0].y) &&(asteD5[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste557
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste557:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste228
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste558
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste558:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste228
L__move_aste466:
;glcd.c,540 :: 		check_coll(jugador[0], asteD5[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste229:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste229
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste230:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste230
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,541 :: 		}
L_move_aste228:
;glcd.c,542 :: 		}
L_move_aste225:
L_move_aste224:
;glcd.c,527 :: 		for(i = 0; i <3; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,543 :: 		}
	GOTO        L_move_aste214
L_move_aste215:
;glcd.c,544 :: 		for(i = 0; i <4; i++){
	CLRF        move_aste_i_L0+0 
L_move_aste231:
	MOVLW       4
	SUBWF       move_aste_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste232
;glcd.c,545 :: 		asteD6[i].old_x = asteD6[i].x;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 1 
	MOVLW       2
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,546 :: 		asteD6[i].x += 1;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVFF       R2, FSR0L+0
	MOVFF       R3, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	INCF        R0, 1 
	MOVFF       R2, FSR1L+0
	MOVFF       R3, FSR1H+0
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,547 :: 		if(asteD6[i].x > 126){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORLW       126
	MOVWF       R0 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste234
;glcd.c,548 :: 		asteD6[i].x = 2;
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 0 
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1L+1 
	MOVLW       2
	MOVWF       POSTINC1+0 
;glcd.c,549 :: 		}
L_move_aste234:
;glcd.c,550 :: 		if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste235
;glcd.c,551 :: 		if((asteD6[i].y >= jugador[1].y) &&(asteD6[i].y < jugador[1].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste559
	MOVF        _jugador+5, 0 
	SUBWF       R1, 0 
L__move_aste559:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste238
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+5, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste560
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste560:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste238
L__move_aste465:
;glcd.c,552 :: 		check_coll(jugador[1], asteD6[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+4
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+4)
	MOVWF       FSR0L+1 
L_move_aste239:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste239
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste240:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste240
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,553 :: 		}
L_move_aste238:
;glcd.c,554 :: 		}
	GOTO        L_move_aste241
L_move_aste235:
;glcd.c,555 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste242
;glcd.c,556 :: 		if((asteD6[i].y >= jugador[0].y) &&(asteD6[i].y < jugador[0].y + 4)){
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	BTFSC       R1, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste561
	MOVF        _jugador+1, 0 
	SUBWF       R1, 0 
L__move_aste561:
	BTFSS       STATUS+0, 0 
	GOTO        L_move_aste245
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       R3, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__move_aste562
	MOVF        R1, 0 
	SUBWF       R3, 0 
L__move_aste562:
	BTFSC       STATUS+0, 0 
	GOTO        L_move_aste245
L__move_aste464:
;glcd.c,557 :: 		check_coll(jugador[0], asteD6[i], 1);
	MOVLW       4
	MOVWF       R0 
	MOVLW       FARG_check_coll_nave+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_nave+0)
	MOVWF       FSR1L+1 
	MOVLW       _jugador+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_jugador+0)
	MOVWF       FSR0L+1 
L_move_aste246:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste246
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        move_aste_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVLW       3
	MOVWF       R0 
	MOVLW       FARG_check_coll_aste+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(FARG_check_coll_aste+0)
	MOVWF       FSR1L+1 
L_move_aste247:
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	DECF        R0, 1 
	BTFSS       STATUS+0, 2 
	GOTO        L_move_aste247
	MOVLW       1
	MOVWF       FARG_check_coll_num+0 
	CALL        _check_coll+0, 0
;glcd.c,558 :: 		}
L_move_aste245:
;glcd.c,559 :: 		}
L_move_aste242:
L_move_aste241:
;glcd.c,544 :: 		for(i = 0; i <4; i++){
	INCF        move_aste_i_L0+0, 1 
;glcd.c,560 :: 		}
	GOTO        L_move_aste231
L_move_aste232:
;glcd.c,561 :: 		}
L_move_aste77:
;glcd.c,562 :: 		}
L_end_move_aste:
	RETURN      0
; end of _move_aste

_draw_lineTime:

;glcd.c,564 :: 		void draw_lineTime(){
;glcd.c,565 :: 		unsigned short i = lineTime;
	MOVF        _lineTime+0, 0 
	MOVWF       draw_lineTime_i_L0+0 
;glcd.c,566 :: 		for(i ; i<64; i++){
L_draw_lineTime248:
	MOVLW       64
	SUBWF       draw_lineTime_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_draw_lineTime249
;glcd.c,567 :: 		Glcd_Dot(64, i, 1);
	MOVLW       64
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        draw_lineTime_i_L0+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,566 :: 		for(i ; i<64; i++){
	INCF        draw_lineTime_i_L0+0, 1 
;glcd.c,568 :: 		}
	GOTO        L_draw_lineTime248
L_draw_lineTime249:
;glcd.c,569 :: 		}
L_end_draw_lineTime:
	RETURN      0
; end of _draw_lineTime

_check_coll:

;glcd.c,571 :: 		void check_coll(naves nave, balas aste, unsigned short num){
;glcd.c,572 :: 		if(num == 1){
	MOVF        FARG_check_coll_num+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_check_coll251
;glcd.c,573 :: 		if((aste.x >= nave.x) && (aste.x < nave.x + 4)) {
	MOVLW       128
	BTFSC       FARG_check_coll_aste+0, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__check_coll565
	MOVF        FARG_check_coll_nave+0, 0 
	SUBWF       FARG_check_coll_aste+0, 0 
L__check_coll565:
	BTFSS       STATUS+0, 0 
	GOTO        L_check_coll254
	MOVLW       4
	ADDWF       FARG_check_coll_nave+0, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	BTFSC       FARG_check_coll_aste+0, 7 
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__check_coll566
	MOVF        R1, 0 
	SUBWF       FARG_check_coll_aste+0, 0 
L__check_coll566:
	BTFSC       STATUS+0, 0 
	GOTO        L_check_coll254
L__check_coll484:
;glcd.c,574 :: 		borrar_player(nave.x, nave.y);
	MOVF        FARG_check_coll_nave+0, 0 
	MOVWF       FARG_borrar_player_x+0 
	MOVF        FARG_check_coll_nave+1, 0 
	MOVWF       FARG_borrar_player_y+0 
	CALL        _borrar_player+0, 0
;glcd.c,575 :: 		init();
	CALL        _init+0, 0
;glcd.c,576 :: 		turno_player = 0;
	CLRF        _turno_player+0 
;glcd.c,577 :: 		}
L_check_coll254:
;glcd.c,578 :: 		}
L_check_coll251:
;glcd.c,579 :: 		}
L_end_check_coll:
	RETURN      0
; end of _check_coll

_IA_player:

;glcd.c,581 :: 		void IA_player(){
;glcd.c,583 :: 		int menor_aux = 0;
	CLRF        IA_player_menor_aux_L0+0 
	CLRF        IA_player_menor_aux_L0+1 
	MOVLW       231
	MOVWF       IA_player_menor_L0+0 
	MOVLW       3
	MOVWF       IA_player_menor_L0+1 
	MOVLW       231
	MOVWF       IA_player_menor2_L0+0 
	MOVLW       3
	MOVWF       IA_player_menor2_L0+1 
;glcd.c,587 :: 		if (count1 == 6){
	MOVF        _count1+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_IA_player255
;glcd.c,588 :: 		if(jugador[0].y + 4 > 56){
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player568
	MOVF        R1, 0 
	SUBLW       56
L__IA_player568:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player256
;glcd.c,589 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player257:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player258
;glcd.c,590 :: 		menor_aux = fabs( 44 - aste7[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste7+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_aste7+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,591 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player569
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player569:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player260
;glcd.c,592 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,593 :: 		}
L_IA_player260:
;glcd.c,589 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,594 :: 		}
	GOTO        L_IA_player257
L_IA_player258:
;glcd.c,596 :: 		if(menor >= 8 && (jugador[0].y + 4 > 56)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player570
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player570:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player263
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player571
	MOVF        R1, 0 
	SUBLW       56
L__IA_player571:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player263
L__IA_player504:
;glcd.c,597 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,598 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,599 :: 		}
L_IA_player263:
;glcd.c,600 :: 		}
	GOTO        L_IA_player264
L_IA_player256:
;glcd.c,601 :: 		else if( jugador[0].y < 56 && jugador[0].y + 4 > 48){
	MOVLW       56
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player267
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player572
	MOVF        R1, 0 
	SUBLW       48
L__IA_player572:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player267
L__IA_player503:
;glcd.c,602 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player268:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player269
;glcd.c,603 :: 		menor_aux = fabs( 44 - asteD6[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD6+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_asteD6+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,604 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player573
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player573:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player271
;glcd.c,605 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,606 :: 		}
L_IA_player271:
;glcd.c,602 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,607 :: 		}
	GOTO        L_IA_player268
L_IA_player269:
;glcd.c,609 :: 		if(menor >= 8 && (jugador[0].y + 4 > 48)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player574
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player574:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player274
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player575
	MOVF        R1, 0 
	SUBLW       48
L__IA_player575:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player274
L__IA_player502:
;glcd.c,610 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,611 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,612 :: 		}
L_IA_player274:
;glcd.c,613 :: 		}
	GOTO        L_IA_player275
L_IA_player267:
;glcd.c,614 :: 		else if( jugador[0].y < 48 && jugador[0].y + 4 > 40){
	MOVLW       48
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player278
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player576
	MOVF        R1, 0 
	SUBLW       40
L__IA_player576:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player278
L__IA_player501:
;glcd.c,615 :: 		for( i = 0; i<3; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player279:
	MOVLW       3
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player280
;glcd.c,616 :: 		menor_aux = fabs( 44 - asteD5[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD5+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_asteD5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,617 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player577
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player577:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player282
;glcd.c,618 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,619 :: 		}
L_IA_player282:
;glcd.c,615 :: 		for( i = 0; i<3; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,620 :: 		}
	GOTO        L_IA_player279
L_IA_player280:
;glcd.c,621 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player283:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player284
;glcd.c,622 :: 		menor_aux = fabs( 44 - aste5[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,623 :: 		if(menor_aux < menor2){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor2_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player578
	MOVF        IA_player_menor2_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player578:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player286
;glcd.c,624 :: 		menor2 = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor2_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor2_L0+1 
;glcd.c,625 :: 		}
L_IA_player286:
;glcd.c,621 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,626 :: 		}
	GOTO        L_IA_player283
L_IA_player284:
;glcd.c,628 :: 		if((menor >= 8 && menor2 >= 11) && (jugador[0].y + 4 > 40)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player579
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player579:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player291
	MOVLW       128
	XORWF       IA_player_menor2_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player580
	MOVLW       11
	SUBWF       IA_player_menor2_L0+0, 0 
L__IA_player580:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player291
L__IA_player500:
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player581
	MOVF        R1, 0 
	SUBLW       40
L__IA_player581:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player291
L__IA_player499:
;glcd.c,629 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,630 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,631 :: 		}
L_IA_player291:
;glcd.c,632 :: 		}
	GOTO        L_IA_player292
L_IA_player278:
;glcd.c,633 :: 		else if( jugador[0].y < 40 && jugador[0].y + 4 > 35){
	MOVLW       40
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player295
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player582
	MOVF        R1, 0 
	SUBLW       35
L__IA_player582:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player295
L__IA_player498:
;glcd.c,634 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player296:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player297
;glcd.c,635 :: 		menor_aux = fabs( 44 - aste5[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste5+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_aste5+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,636 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player583
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player583:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player299
;glcd.c,637 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,638 :: 		}
L_IA_player299:
;glcd.c,634 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,639 :: 		}
	GOTO        L_IA_player296
L_IA_player297:
;glcd.c,640 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player300:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player301
;glcd.c,641 :: 		menor_aux = fabs( 44 - asteD4[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,642 :: 		if(menor_aux < menor2){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor2_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player584
	MOVF        IA_player_menor2_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player584:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player303
;glcd.c,643 :: 		menor2 = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor2_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor2_L0+1 
;glcd.c,644 :: 		}
L_IA_player303:
;glcd.c,640 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,645 :: 		}
	GOTO        L_IA_player300
L_IA_player301:
;glcd.c,647 :: 		if(menor >= 8&& (jugador[0].y + 4 > 35)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player585
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player585:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player306
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player586
	MOVF        R1, 0 
	SUBLW       35
L__IA_player586:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player306
L__IA_player497:
;glcd.c,648 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,649 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,650 :: 		}
L_IA_player306:
;glcd.c,651 :: 		}
	GOTO        L_IA_player307
L_IA_player295:
;glcd.c,652 :: 		else if( jugador[0].y < 35 && jugador[0].y + 4 > 28){
	MOVLW       35
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player310
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player587
	MOVF        R1, 0 
	SUBLW       28
L__IA_player587:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player310
L__IA_player496:
;glcd.c,653 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player311:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player312
;glcd.c,654 :: 		menor_aux = fabs( 44 - asteD4[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD4+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_asteD4+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,655 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player588
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player588:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player314
;glcd.c,656 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,657 :: 		}
L_IA_player314:
;glcd.c,653 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,658 :: 		}
	GOTO        L_IA_player311
L_IA_player312:
;glcd.c,660 :: 		if(menor >= 8 && (jugador[0].y + 4 > 28)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player589
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player589:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player317
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player590
	MOVF        R1, 0 
	SUBLW       28
L__IA_player590:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player317
L__IA_player495:
;glcd.c,661 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,662 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,663 :: 		}
L_IA_player317:
;glcd.c,664 :: 		}
	GOTO        L_IA_player318
L_IA_player310:
;glcd.c,665 :: 		else if( jugador[0].y < 28 && jugador[0].y + 4 > 21){
	MOVLW       28
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player321
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player591
	MOVF        R1, 0 
	SUBLW       21
L__IA_player591:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player321
L__IA_player494:
;glcd.c,666 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player322:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player323
;glcd.c,667 :: 		menor_aux = fabs( 44 - aste3[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste3+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_aste3+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,668 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player592
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player592:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player325
;glcd.c,669 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,670 :: 		}
L_IA_player325:
;glcd.c,666 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,671 :: 		}
	GOTO        L_IA_player322
L_IA_player323:
;glcd.c,673 :: 		if(menor >= 8 && (jugador[0].y + 4 > 21)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player593
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player593:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player328
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player594
	MOVF        R1, 0 
	SUBLW       21
L__IA_player594:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player328
L__IA_player493:
;glcd.c,674 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,675 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,676 :: 		}
L_IA_player328:
;glcd.c,677 :: 		}
	GOTO        L_IA_player329
L_IA_player321:
;glcd.c,678 :: 		else if( jugador[0].y < 21 && jugador[0].y + 4 > 16){
	MOVLW       21
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player332
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player595
	MOVF        R1, 0 
	SUBLW       16
L__IA_player595:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player332
L__IA_player492:
;glcd.c,679 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player333:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player334
;glcd.c,680 :: 		menor_aux = fabs( 44 - asteD2[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD2+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_asteD2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,681 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player596
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player596:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player336
;glcd.c,682 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,683 :: 		}
L_IA_player336:
;glcd.c,679 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,684 :: 		}
	GOTO        L_IA_player333
L_IA_player334:
;glcd.c,686 :: 		if(menor >= 8 && (jugador[0].y + 4 > 16)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player597
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player597:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player339
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player598
	MOVF        R1, 0 
	SUBLW       16
L__IA_player598:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player339
L__IA_player491:
;glcd.c,687 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,688 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,689 :: 		}
L_IA_player339:
;glcd.c,690 :: 		}
	GOTO        L_IA_player340
L_IA_player332:
;glcd.c,691 :: 		else if( jugador[0].y < 16 && jugador[0].y + 4 > 12){
	MOVLW       16
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player343
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player599
	MOVF        R1, 0 
	SUBLW       12
L__IA_player599:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player343
L__IA_player490:
;glcd.c,692 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player344:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player345
;glcd.c,693 :: 		menor_aux = fabs( 44 - aste2[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste2+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_aste2+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,694 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player600
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player600:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player347
;glcd.c,695 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,696 :: 		}
L_IA_player347:
;glcd.c,692 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,697 :: 		}
	GOTO        L_IA_player344
L_IA_player345:
;glcd.c,699 :: 		if(menor >= 8 && (jugador[0].y + 4 > 12)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player601
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player601:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player350
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player602
	MOVF        R1, 0 
	SUBLW       12
L__IA_player602:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player350
L__IA_player489:
;glcd.c,700 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,701 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,702 :: 		}
L_IA_player350:
;glcd.c,703 :: 		}
	GOTO        L_IA_player351
L_IA_player343:
;glcd.c,704 :: 		else if( jugador[0].y < 12 && jugador[0].y + 4 > 6){
	MOVLW       12
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player354
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player603
	MOVF        R1, 0 
	SUBLW       6
L__IA_player603:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player354
L__IA_player488:
;glcd.c,705 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player355:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player356
;glcd.c,706 :: 		menor_aux = fabs( 44 - asteD1[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _asteD1+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_asteD1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,707 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player604
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player604:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player358
;glcd.c,708 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,709 :: 		}
L_IA_player358:
;glcd.c,705 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,710 :: 		}
	GOTO        L_IA_player355
L_IA_player356:
;glcd.c,712 :: 		if(menor >= 8 && (jugador[0].y + 4 > 6)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player605
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player605:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player361
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player606
	MOVF        R1, 0 
	SUBLW       6
L__IA_player606:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player361
L__IA_player487:
;glcd.c,713 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,714 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,715 :: 		}
L_IA_player361:
;glcd.c,716 :: 		}
	GOTO        L_IA_player362
L_IA_player354:
;glcd.c,718 :: 		else if (jugador[0].y < 6 && jugador[0].y > 0){
	MOVLW       6
	SUBWF       _jugador+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player365
	MOVF        _jugador+1, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player365
L__IA_player486:
;glcd.c,719 :: 		for( i = 0; i<4; i++){
	CLRF        IA_player_i_L0+0 
L_IA_player366:
	MOVLW       4
	SUBWF       IA_player_i_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player367
;glcd.c,720 :: 		menor_aux = fabs( 44 - aste1[i].x );
	MOVLW       3
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        IA_player_i_L0+0, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVLW       _aste1+0
	ADDWF       R0, 0 
	MOVWF       FSR2L+0 
	MOVLW       hi_addr(_aste1+0)
	ADDWFC      R1, 0 
	MOVWF       FSR2L+1 
	MOVF        POSTINC2+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       44
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	BTFSC       R0, 7 
	MOVLW       255
	SUBWFB      R1, 1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_fabs_d+0 
	MOVF        R1, 0 
	MOVWF       FARG_fabs_d+1 
	MOVF        R2, 0 
	MOVWF       FARG_fabs_d+2 
	MOVF        R3, 0 
	MOVWF       FARG_fabs_d+3 
	CALL        _fabs+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       IA_player_menor_aux_L0+0 
	MOVF        R1, 0 
	MOVWF       IA_player_menor_aux_L0+1 
;glcd.c,721 :: 		if(menor_aux < menor){
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player607
	MOVF        IA_player_menor_L0+0, 0 
	SUBWF       R0, 0 
L__IA_player607:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player369
;glcd.c,722 :: 		menor = menor_aux;
	MOVF        IA_player_menor_aux_L0+0, 0 
	MOVWF       IA_player_menor_L0+0 
	MOVF        IA_player_menor_aux_L0+1, 0 
	MOVWF       IA_player_menor_L0+1 
;glcd.c,723 :: 		}
L_IA_player369:
;glcd.c,719 :: 		for( i = 0; i<4; i++){
	INCF        IA_player_i_L0+0, 1 
;glcd.c,724 :: 		}
	GOTO        L_IA_player366
L_IA_player367:
;glcd.c,725 :: 		if(menor >= 8 && (jugador[0].y + 4 > 1)){
	MOVLW       128
	XORWF       IA_player_menor_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player608
	MOVLW       8
	SUBWF       IA_player_menor_L0+0, 0 
L__IA_player608:
	BTFSS       STATUS+0, 0 
	GOTO        L_IA_player372
	MOVLW       4
	ADDWF       _jugador+1, 0 
	MOVWF       R1 
	CLRF        R2 
	MOVLW       0
	ADDWFC      R2, 1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__IA_player609
	MOVF        R1, 0 
	SUBLW       1
L__IA_player609:
	BTFSC       STATUS+0, 0 
	GOTO        L_IA_player372
L__IA_player485:
;glcd.c,726 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,727 :: 		draw_player(jugador[0].x , jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,728 :: 		}
L_IA_player372:
;glcd.c,730 :: 		}
L_IA_player365:
L_IA_player362:
L_IA_player351:
L_IA_player340:
L_IA_player329:
L_IA_player318:
L_IA_player307:
L_IA_player292:
L_IA_player275:
L_IA_player264:
;glcd.c,733 :: 		}
L_IA_player255:
;glcd.c,735 :: 		}
L_end_IA_player:
	RETURN      0
; end of _IA_player

_send_char:

;glcd.c,737 :: 		void send_char(char charValue){
;glcd.c,738 :: 		while (UART1_Tx_Idle()!= 1);
L_send_char373:
	CALL        _UART1_Tx_Idle+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_send_char374
	GOTO        L_send_char373
L_send_char374:
;glcd.c,739 :: 		UART1_Write(charValue);
	MOVF        FARG_send_char_charValue+0, 0 
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;glcd.c,740 :: 		}
L_end_send_char:
	RETURN      0
; end of _send_char

_serial_pack_data:

;glcd.c,742 :: 		void serial_pack_data() {  //Funcion para empaquetar datos a enviar
;glcd.c,744 :: 		serial_data[0] = flag;
	MOVF        _flag+0, 0 
	MOVWF       _serial_data+0 
;glcd.c,745 :: 		serial_data[1] = jugador[1].y + '0';
	MOVLW       48
	ADDWF       _jugador+5, 0 
	MOVWF       _serial_data+1 
;glcd.c,746 :: 		serial_data[2] = flagTime;
	MOVF        _flagTime+0, 0 
	MOVWF       _serial_data+2 
;glcd.c,747 :: 		serial_data[3] = turno_player + '0';
	MOVLW       48
	ADDWF       _turno_player+0, 0 
	MOVWF       _serial_data+3 
;glcd.c,748 :: 		serial_data[4] = jugador[0].y + '0';
	MOVLW       48
	ADDWF       _jugador+1, 0 
	MOVWF       _serial_data+4 
;glcd.c,749 :: 		serial_data[5] = score[1] + '0';
	MOVLW       48
	ADDWF       _score+1, 0 
	MOVWF       _serial_data+5 
;glcd.c,750 :: 		serial_data[6] = score[0] + '0';
	MOVLW       48
	ADDWF       _score+0, 0 
	MOVWF       _serial_data+6 
;glcd.c,751 :: 		serial_data[7] = flag_end;
	MOVF        _flag_end+0, 0 
	MOVWF       _serial_data+7 
;glcd.c,752 :: 		serial_data[8] = 0;
	CLRF        _serial_data+8 
;glcd.c,753 :: 		}
L_end_serial_pack_data:
	RETURN      0
; end of _serial_pack_data

_send_pack_data:

;glcd.c,755 :: 		void send_pack_data(char *serial_dir){
;glcd.c,756 :: 		while (UART1_Tx_Idle()!= 1);
L_send_pack_data375:
	CALL        _UART1_Tx_Idle+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_send_pack_data376
	GOTO        L_send_pack_data375
L_send_pack_data376:
;glcd.c,757 :: 		UART1_Write_Text(serial_dir);
	MOVF        FARG_send_pack_data_serial_dir+0, 0 
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVF        FARG_send_pack_data_serial_dir+1, 0 
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;glcd.c,758 :: 		}
L_end_send_pack_data:
	RETURN      0
; end of _send_pack_data

_init_counts:

;glcd.c,760 :: 		void init_counts(){
;glcd.c,761 :: 		count = 0;
	CLRF        _count+0 
;glcd.c,762 :: 		count1 = 0;
	CLRF        _count1+0 
;glcd.c,763 :: 		lineTime = 0;
	CLRF        _lineTime+0 
;glcd.c,764 :: 		timeCount = 0;
	CLRF        _timeCount+0 
;glcd.c,765 :: 		score[0] = 0;
	CLRF        _score+0 
;glcd.c,766 :: 		score[1] = 0;
	CLRF        _score+1 
;glcd.c,767 :: 		turno_player = 0;
	CLRF        _turno_player+0 
;glcd.c,769 :: 		}
L_end_init_counts:
	RETURN      0
; end of _init_counts

_main:

;glcd.c,771 :: 		void main() {
;glcd.c,772 :: 		char E_M = '3';
	MOVLW       51
	MOVWF       main_E_M_L0+0 
	CLRF        main_Player_L0+0 
	CLRF        main_count_op_L0+0 
;glcd.c,776 :: 		Glcd_Init();         // Para inicialzar el modulo glcd
	CALL        _Glcd_Init+0, 0
;glcd.c,777 :: 		Glcd_Fill(0x00);        // Para limpiar la pantalla
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,781 :: 		PORTC = 0;      //Ponemos todo el puerto C en 0
	CLRF        PORTC+0 
;glcd.c,782 :: 		TRISC.F0 = 1;   //Se declara como una entrada
	BSF         TRISC+0, 0 
;glcd.c,783 :: 		TRISC.F1 = 1;
	BSF         TRISC+0, 1 
;glcd.c,787 :: 		UART1_Init(9600); // baudios a 9600
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;glcd.c,788 :: 		Delay_ms(200);    // Esperamos a que se estabilice el modulo uart
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main377:
	DECFSZ      R13, 1, 1
	BRA         L_main377
	DECFSZ      R12, 1, 1
	BRA         L_main377
	DECFSZ      R11, 1, 1
	BRA         L_main377
;glcd.c,791 :: 		ADC_Init();
	CALL        _ADC_Init+0, 0
;glcd.c,793 :: 		first_CoverP();
	CALL        _first_CoverP+0, 0
;glcd.c,794 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,796 :: 		while(1){
L_main378:
;glcd.c,797 :: 		switch(estado){
	GOTO        L_main380
;glcd.c,798 :: 		case 0:
L_main382:
;glcd.c,799 :: 		port_space();
	CALL        _port_space+0, 0
;glcd.c,800 :: 		while(1){
L_main383:
;glcd.c,801 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,802 :: 		if (y <= 100) {
	MOVLW       0
	MOVWF       R2 
	MOVF        R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main615
	MOVF        R0, 0 
	SUBLW       100
L__main615:
	BTFSS       STATUS+0, 0 
	GOTO        L_main385
;glcd.c,803 :: 		Glcd_Write_Text("One player", 35, 4,0);
	MOVLW       ?lstr27_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr27_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       35
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	CLRF        FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,804 :: 		estado = 1;
	MOVLW       1
	MOVWF       _estado+0 
;glcd.c,805 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main386:
	DECFSZ      R13, 1, 1
	BRA         L_main386
	DECFSZ      R12, 1, 1
	BRA         L_main386
	DECFSZ      R11, 1, 1
	BRA         L_main386
	NOP
	NOP
;glcd.c,806 :: 		break;
	GOTO        L_main384
;glcd.c,807 :: 		}
L_main385:
;glcd.c,808 :: 		if(y >= 600){
	MOVLW       2
	SUBWF       _y+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main616
	MOVLW       88
	SUBWF       _y+0, 0 
L__main616:
	BTFSS       STATUS+0, 0 
	GOTO        L_main387
;glcd.c,809 :: 		Glcd_Write_Text("Two players", 32, 6,0);
	MOVLW       ?lstr28_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr28_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       32
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	CLRF        FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,810 :: 		estado = 2;
	MOVLW       2
	MOVWF       _estado+0 
;glcd.c,811 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main388:
	DECFSZ      R13, 1, 1
	BRA         L_main388
	DECFSZ      R12, 1, 1
	BRA         L_main388
	DECFSZ      R11, 1, 1
	BRA         L_main388
	NOP
	NOP
;glcd.c,812 :: 		break;
	GOTO        L_main384
;glcd.c,813 :: 		}
L_main387:
;glcd.c,827 :: 		}
	GOTO        L_main383
L_main384:
;glcd.c,828 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,829 :: 		break;
	GOTO        L_main381
;glcd.c,831 :: 		case 1:   // Caso single player
L_main389:
;glcd.c,832 :: 		init_counts();
	CALL        _init_counts+0, 0
;glcd.c,833 :: 		init();
	CALL        _init+0, 0
;glcd.c,834 :: 		init_aste();
	CALL        _init_aste+0, 0
;glcd.c,835 :: 		draw_lineTime();
	CALL        _draw_lineTime+0, 0
;glcd.c,838 :: 		while(1){
L_main390:
;glcd.c,839 :: 		if (count > 3){
	MOVF        _count+0, 0 
	SUBLW       3
	BTFSC       STATUS+0, 0 
	GOTO        L_main392
;glcd.c,840 :: 		count = 0;
	CLRF        _count+0 
;glcd.c,841 :: 		}
L_main392:
;glcd.c,842 :: 		if (timeCount >= 20){
	MOVLW       20
	SUBWF       _timeCount+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_main393
;glcd.c,843 :: 		Glcd_Dot(64, lineTime, 0);
	MOVLW       64
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _lineTime+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,844 :: 		timeCount = 0;
	CLRF        _timeCount+0 
;glcd.c,845 :: 		lineTime += 1;
	INCF        _lineTime+0, 1 
;glcd.c,846 :: 		}
L_main393:
;glcd.c,847 :: 		if(count1 > 6){
	MOVF        _count1+0, 0 
	SUBLW       6
	BTFSC       STATUS+0, 0 
	GOTO        L_main394
;glcd.c,848 :: 		count1 = 0;
	CLRF        _count1+0 
;glcd.c,849 :: 		}
L_main394:
;glcd.c,850 :: 		if(lineTime == 63){ //se comprueba ganador cuando acabe el tiempo
	MOVF        _lineTime+0, 0 
	XORLW       63
	BTFSS       STATUS+0, 2 
	GOTO        L_main395
;glcd.c,851 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main396:
	DECFSZ      R13, 1, 1
	BRA         L_main396
	DECFSZ      R12, 1, 1
	BRA         L_main396
	DECFSZ      R11, 1, 1
	BRA         L_main396
	NOP
	NOP
;glcd.c,852 :: 		if(score[0] >  score[1]){
	MOVF        _score+0, 0 
	SUBWF       _score+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main397
;glcd.c,853 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,854 :: 		Glcd_Write_Text("PC WIN !!", 43, 4,1);
	MOVLW       ?lstr29_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr29_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       43
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,855 :: 		Delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main398:
	DECFSZ      R13, 1, 1
	BRA         L_main398
	DECFSZ      R12, 1, 1
	BRA         L_main398
	DECFSZ      R11, 1, 1
	BRA         L_main398
	NOP
;glcd.c,856 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,857 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,858 :: 		break;
	GOTO        L_main391
;glcd.c,859 :: 		}
L_main397:
;glcd.c,860 :: 		else if(score[1] > score[0]){
	MOVF        _score+1, 0 
	SUBWF       _score+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main400
;glcd.c,861 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,862 :: 		Glcd_Write_Text("Player WIN !!", 36, 4,1);
	MOVLW       ?lstr30_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr30_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       36
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,863 :: 		Delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main401:
	DECFSZ      R13, 1, 1
	BRA         L_main401
	DECFSZ      R12, 1, 1
	BRA         L_main401
	DECFSZ      R11, 1, 1
	BRA         L_main401
	NOP
;glcd.c,864 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,865 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,866 :: 		break;
	GOTO        L_main391
;glcd.c,867 :: 		}
L_main400:
;glcd.c,869 :: 		lineTime = 0;
	CLRF        _lineTime+0 
;glcd.c,870 :: 		draw_lineTime();
	CALL        _draw_lineTime+0, 0
;glcd.c,872 :: 		}
L_main395:
;glcd.c,874 :: 		if(turno_player == 0){
	MOVF        _turno_player+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main403
;glcd.c,875 :: 		count_op = 0;
	CLRF        main_count_op_L0+0 
;glcd.c,876 :: 		while(1){
L_main404:
;glcd.c,877 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,878 :: 		if( y<= 100 || y>=600){
	MOVLW       0
	MOVWF       R2 
	MOVF        R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main617
	MOVF        R0, 0 
	SUBLW       100
L__main617:
	BTFSC       STATUS+0, 0 
	GOTO        L__main509
	MOVLW       2
	SUBWF       _y+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main618
	MOVLW       88
	SUBWF       _y+0, 0 
L__main618:
	BTFSC       STATUS+0, 0 
	GOTO        L__main509
	GOTO        L_main408
L__main509:
;glcd.c,879 :: 		turno_player = 1;
	MOVLW       1
	MOVWF       _turno_player+0 
;glcd.c,880 :: 		break;
	GOTO        L_main405
;glcd.c,881 :: 		}
L_main408:
;glcd.c,886 :: 		if(count_op > 50){
	MOVF        main_count_op_L0+0, 0 
	SUBLW       50
	BTFSC       STATUS+0, 0 
	GOTO        L_main409
;glcd.c,887 :: 		turno_player = 2;
	MOVLW       2
	MOVWF       _turno_player+0 
;glcd.c,888 :: 		break;
	GOTO        L_main405
;glcd.c,889 :: 		}
L_main409:
;glcd.c,890 :: 		count_op ++;
	INCF        main_count_op_L0+0, 1 
;glcd.c,891 :: 		}
	GOTO        L_main404
L_main405:
;glcd.c,892 :: 		}
	GOTO        L_main410
L_main403:
;glcd.c,893 :: 		else if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main411
;glcd.c,894 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,895 :: 		if(y >= 600){   // Hacia abajo
	MOVLW       2
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main619
	MOVLW       88
	SUBWF       R0, 0 
L__main619:
	BTFSS       STATUS+0, 0 
	GOTO        L_main412
;glcd.c,896 :: 		move_players(0,1);
	CLRF        FARG_move_players_direc+0 
	MOVLW       1
	MOVWF       FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,897 :: 		draw_player(jugador[1].x, jugador[1].y);
	MOVF        _jugador+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+5, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,898 :: 		}
L_main412:
;glcd.c,899 :: 		if(y <= 100){      // Hacia arriba
	MOVLW       0
	MOVWF       R0 
	MOVF        _y+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main620
	MOVF        _y+0, 0 
	SUBLW       100
L__main620:
	BTFSS       STATUS+0, 0 
	GOTO        L_main413
;glcd.c,900 :: 		move_players(1,1);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	MOVLW       1
	MOVWF       FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,901 :: 		draw_player(jugador[1].x, jugador[1].y);
	MOVF        _jugador+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+5, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,902 :: 		}
L_main413:
;glcd.c,912 :: 		}
	GOTO        L_main414
L_main411:
;glcd.c,913 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main415
;glcd.c,914 :: 		IA_player();
	CALL        _IA_player+0, 0
;glcd.c,916 :: 		}
L_main415:
L_main414:
L_main410:
;glcd.c,917 :: 		move_aste();
	CALL        _move_aste+0, 0
;glcd.c,918 :: 		draw_aste();
	CALL        _draw_aste+0, 0
;glcd.c,920 :: 		draw_score_1();
	CALL        _draw_score_1+0, 0
;glcd.c,921 :: 		draw_score_2();
	CALL        _draw_score_2+0, 0
;glcd.c,923 :: 		count ++;
	INCF        _count+0, 1 
;glcd.c,924 :: 		count1 ++;
	INCF        _count1+0, 1 
;glcd.c,925 :: 		timeCount ++;
	INCF        _timeCount+0, 1 
;glcd.c,927 :: 		}
	GOTO        L_main390
L_main391:
;glcd.c,928 :: 		break;
	GOTO        L_main381
;glcd.c,930 :: 		case 2:   // Caso multijugador
L_main416:
;glcd.c,931 :: 		init();
	CALL        _init+0, 0
;glcd.c,932 :: 		init_aste();
	CALL        _init_aste+0, 0
;glcd.c,937 :: 		if(UART1_Data_Ready()==0){
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main417
;glcd.c,938 :: 		E_M = '1';
	MOVLW       49
	MOVWF       main_E_M_L0+0 
;glcd.c,939 :: 		UART1_Write('2');
	MOVLW       50
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;glcd.c,940 :: 		}
	GOTO        L_main418
L_main417:
;glcd.c,942 :: 		E_M = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_E_M_L0+0 
;glcd.c,943 :: 		}
L_main418:
;glcd.c,945 :: 		if(E_M == '2'){
	MOVF        main_E_M_L0+0, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_main419
;glcd.c,946 :: 		Glcd_Write_Text("    ",0,0,1);
	MOVLW       ?lstr31_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr31_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,947 :: 		Glcd_Write_Text("P2",115,0,1);
	MOVLW       ?lstr32_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr32_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       115
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,948 :: 		Player = 2;
	MOVLW       2
	MOVWF       main_Player_L0+0 
;glcd.c,949 :: 		}
	GOTO        L_main420
L_main419:
;glcd.c,951 :: 		Glcd_Write_Text("    ",0,0,1);
	MOVLW       ?lstr33_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr33_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,952 :: 		Glcd_Write_Text("P1",0,0,1);
	MOVLW       ?lstr34_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr34_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,953 :: 		Player = 1;
	MOVLW       1
	MOVWF       main_Player_L0+0 
;glcd.c,954 :: 		}
L_main420:
;glcd.c,958 :: 		flag_end = '0';
	MOVLW       48
	MOVWF       _flag_end+0 
;glcd.c,959 :: 		lineTime = 0;
	CLRF        _lineTime+0 
;glcd.c,960 :: 		turno_player = 0;
	CLRF        _turno_player+0 
;glcd.c,961 :: 		flag = 'S';
	MOVLW       83
	MOVWF       _flag+0 
;glcd.c,962 :: 		flagTime = 'S';
	MOVLW       83
	MOVWF       _flagTime+0 
;glcd.c,963 :: 		timeCount = 0;
	CLRF        _timeCount+0 
;glcd.c,964 :: 		score[0] = 0;
	CLRF        _score+0 
;glcd.c,965 :: 		score[1] = 0;
	CLRF        _score+1 
;glcd.c,966 :: 		count = 0;
	CLRF        _count+0 
;glcd.c,968 :: 		if(Player == 1){   // Es el Maestro (Derecha)
	MOVF        main_Player_L0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main421
;glcd.c,969 :: 		draw_lineTime();
	CALL        _draw_lineTime+0, 0
;glcd.c,970 :: 		while(1){
L_main422:
;glcd.c,971 :: 		if(count > 3){
	MOVF        _count+0, 0 
	SUBLW       3
	BTFSC       STATUS+0, 0 
	GOTO        L_main424
;glcd.c,972 :: 		count = 0;
	CLRF        _count+0 
;glcd.c,973 :: 		flag = 'C'; // Indica al esclavo que avancen asteroides.
	MOVLW       67
	MOVWF       _flag+0 
;glcd.c,974 :: 		}
L_main424:
;glcd.c,975 :: 		if (timeCount > 20){
	MOVF        _timeCount+0, 0 
	SUBLW       20
	BTFSC       STATUS+0, 0 
	GOTO        L_main425
;glcd.c,976 :: 		Glcd_Dot(64, lineTime, 0);
	MOVLW       64
	MOVWF       FARG_Glcd_Dot_x_pos+0 
	MOVF        _lineTime+0, 0 
	MOVWF       FARG_Glcd_Dot_y_pos+0 
	CLRF        FARG_Glcd_Dot_color+0 
	CALL        _Glcd_Dot+0, 0
;glcd.c,977 :: 		lineTime += 1;
	INCF        _lineTime+0, 1 
;glcd.c,978 :: 		timeCount = 0;
	CLRF        _timeCount+0 
;glcd.c,979 :: 		flagTime = 'C';
	MOVLW       67
	MOVWF       _flagTime+0 
;glcd.c,980 :: 		}
L_main425:
;glcd.c,981 :: 		if(turno_player == 0){
	MOVF        _turno_player+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main426
;glcd.c,982 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,983 :: 		while(UART1_Data_Ready() == 0);// No avance hasta que haya algo que leer
L_main427:
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main428
	GOTO        L_main427
L_main428:
;glcd.c,985 :: 		if((UART1_Read() != '0') && (y>100 && y < 600)){
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	XORLW       48
	BTFSC       STATUS+0, 2 
	GOTO        L_main433
	MOVLW       0
	MOVWF       R0 
	MOVF        _y+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main621
	MOVF        _y+0, 0 
	SUBLW       100
L__main621:
	BTFSC       STATUS+0, 0 
	GOTO        L_main433
	MOVLW       2
	SUBWF       _y+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main622
	MOVLW       88
	SUBWF       _y+0, 0 
L__main622:
	BTFSC       STATUS+0, 0 
	GOTO        L_main433
L__main508:
L__main507:
;glcd.c,986 :: 		turno_player = 2;
	MOVLW       2
	MOVWF       _turno_player+0 
;glcd.c,987 :: 		}
	GOTO        L_main434
L_main433:
;glcd.c,988 :: 		else if((UART1_Read() == '0' && (y <= 100 || y>=600))){
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	XORLW       48
	BTFSS       STATUS+0, 2 
	GOTO        L_main439
	MOVLW       0
	MOVWF       R0 
	MOVF        _y+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main623
	MOVF        _y+0, 0 
	SUBLW       100
L__main623:
	BTFSC       STATUS+0, 0 
	GOTO        L__main506
	MOVLW       2
	SUBWF       _y+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main624
	MOVLW       88
	SUBWF       _y+0, 0 
L__main624:
	BTFSC       STATUS+0, 0 
	GOTO        L__main506
	GOTO        L_main439
L__main506:
L__main505:
;glcd.c,989 :: 		turno_player = 1;
	MOVLW       1
	MOVWF       _turno_player+0 
;glcd.c,990 :: 		}
L_main439:
L_main434:
;glcd.c,998 :: 		}
	GOTO        L_main440
L_main426:
;glcd.c,1000 :: 		else if(turno_player == 1){
	MOVF        _turno_player+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main441
;glcd.c,1001 :: 		y = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _y+0 
	MOVF        R1, 0 
	MOVWF       _y+1 
;glcd.c,1002 :: 		if (y >= 600) { // Abajo
	MOVLW       2
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main625
	MOVLW       88
	SUBWF       R0, 0 
L__main625:
	BTFSS       STATUS+0, 0 
	GOTO        L_main442
;glcd.c,1003 :: 		move_players(0,1);
	CLRF        FARG_move_players_direc+0 
	MOVLW       1
	MOVWF       FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,1004 :: 		draw_player(jugador[1].x, jugador[1].y);
	MOVF        _jugador+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+5, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,1005 :: 		}
	GOTO        L_main443
L_main442:
;glcd.c,1006 :: 		else if(y <= 100){  // Arriba
	MOVLW       0
	MOVWF       R0 
	MOVF        _y+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main626
	MOVF        _y+0, 0 
	SUBLW       100
L__main626:
	BTFSS       STATUS+0, 0 
	GOTO        L_main444
;glcd.c,1007 :: 		move_players(1,1);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	MOVLW       1
	MOVWF       FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,1008 :: 		draw_player(jugador[1].x, jugador[1].y);
	MOVF        _jugador+4, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+5, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,1009 :: 		}
L_main444:
L_main443:
;glcd.c,1019 :: 		}
	GOTO        L_main445
L_main441:
;glcd.c,1021 :: 		else if(turno_player == 2){
	MOVF        _turno_player+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main446
;glcd.c,1022 :: 		while(UART1_Data_Ready() == 0);// No avance hasta que haya algo que leer
L_main447:
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main448
	GOTO        L_main447
L_main448:
;glcd.c,1023 :: 		if(UART1_Read() == '1'){  // Hacia abajo
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	XORLW       49
	BTFSS       STATUS+0, 2 
	GOTO        L_main449
;glcd.c,1024 :: 		move_players(0,0);
	CLRF        FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,1025 :: 		draw_player(jugador[0].x, jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,1026 :: 		}
	GOTO        L_main450
L_main449:
;glcd.c,1027 :: 		else if(UART1_Read() == '2'){  // Hacia arriba
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	XORLW       50
	BTFSS       STATUS+0, 2 
	GOTO        L_main451
;glcd.c,1028 :: 		move_players(1,0);
	MOVLW       1
	MOVWF       FARG_move_players_direc+0 
	CLRF        FARG_move_players_player+0 
	CALL        _move_players+0, 0
;glcd.c,1029 :: 		draw_player(jugador[0].x, jugador[0].y);
	MOVF        _jugador+0, 0 
	MOVWF       FARG_draw_player_x+0 
	MOVF        _jugador+1, 0 
	MOVWF       FARG_draw_player_y+0 
	CALL        _draw_player+0, 0
;glcd.c,1030 :: 		}
L_main451:
L_main450:
;glcd.c,1032 :: 		}
L_main446:
L_main445:
L_main440:
;glcd.c,1034 :: 		move_aste();
	CALL        _move_aste+0, 0
;glcd.c,1035 :: 		draw_aste();
	CALL        _draw_aste+0, 0
;glcd.c,1037 :: 		if(lineTime == 63){
	MOVF        _lineTime+0, 0 
	XORLW       63
	BTFSS       STATUS+0, 2 
	GOTO        L_main452
;glcd.c,1038 :: 		flag_end = '1';
	MOVLW       49
	MOVWF       _flag_end+0 
;glcd.c,1039 :: 		}
L_main452:
;glcd.c,1042 :: 		serial_pack_data();
	CALL        _serial_pack_data+0, 0
;glcd.c,1043 :: 		send_pack_data(serial_data);  // Aqui espera hasta que datos anteriores se leean
	MOVLW       _serial_data+0
	MOVWF       FARG_send_pack_data_serial_dir+0 
	MOVLW       hi_addr(_serial_data+0)
	MOVWF       FARG_send_pack_data_serial_dir+1 
	CALL        _send_pack_data+0, 0
;glcd.c,1044 :: 		while (UART1_Tx_Idle()!=1);  // Ahora espera a que se recibaan los datos actuales
L_main453:
	CALL        _UART1_Tx_Idle+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main454
	GOTO        L_main453
L_main454:
;glcd.c,1046 :: 		draw_score_1();
	CALL        _draw_score_1+0, 0
;glcd.c,1047 :: 		draw_score_2();
	CALL        _draw_score_2+0, 0
;glcd.c,1049 :: 		if(lineTime == 63){ //se comprueba ganador cuando acabe el tiempo
	MOVF        _lineTime+0, 0 
	XORLW       63
	BTFSS       STATUS+0, 2 
	GOTO        L_main455
;glcd.c,1050 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main456:
	DECFSZ      R13, 1, 1
	BRA         L_main456
	DECFSZ      R12, 1, 1
	BRA         L_main456
	DECFSZ      R11, 1, 1
	BRA         L_main456
	NOP
	NOP
;glcd.c,1051 :: 		if(score[0] >  score[1]){
	MOVF        _score+0, 0 
	SUBWF       _score+1, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main457
;glcd.c,1052 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,1053 :: 		Glcd_Write_Text("YOU LOSE !!", 43, 4,1);
	MOVLW       ?lstr35_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr35_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       43
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,1054 :: 		Delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main458:
	DECFSZ      R13, 1, 1
	BRA         L_main458
	DECFSZ      R12, 1, 1
	BRA         L_main458
	DECFSZ      R11, 1, 1
	BRA         L_main458
	NOP
;glcd.c,1055 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,1056 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,1057 :: 		break;
	GOTO        L_main423
;glcd.c,1058 :: 		}
L_main457:
;glcd.c,1059 :: 		else if(score[1] > score[0]){
	MOVF        _score+1, 0 
	SUBWF       _score+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main460
;glcd.c,1060 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,1061 :: 		Glcd_Write_Text("YOU WIN !!", 36, 4,1);
	MOVLW       ?lstr36_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr36_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       36
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,1062 :: 		Delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main461:
	DECFSZ      R13, 1, 1
	BRA         L_main461
	DECFSZ      R12, 1, 1
	BRA         L_main461
	DECFSZ      R11, 1, 1
	BRA         L_main461
	NOP
;glcd.c,1063 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,1064 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,1065 :: 		break;
	GOTO        L_main423
;glcd.c,1066 :: 		}
L_main460:
;glcd.c,1068 :: 		game_over();
	CALL        _game_over+0, 0
;glcd.c,1069 :: 		Glcd_Write_Text("EMPATE !!", 36, 4,1);
	MOVLW       ?lstr37_glcd+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr37_glcd+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       36
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;glcd.c,1070 :: 		Delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main463:
	DECFSZ      R13, 1, 1
	BRA         L_main463
	DECFSZ      R12, 1, 1
	BRA         L_main463
	DECFSZ      R11, 1, 1
	BRA         L_main463
	NOP
;glcd.c,1071 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;glcd.c,1072 :: 		estado = 0;
	CLRF        _estado+0 
;glcd.c,1073 :: 		break;
	GOTO        L_main423
;glcd.c,1076 :: 		}
L_main455:
;glcd.c,1078 :: 		count ++;
	INCF        _count+0, 1 
;glcd.c,1079 :: 		timeCount ++;
	INCF        _timeCount+0, 1 
;glcd.c,1080 :: 		flag = 'S';
	MOVLW       83
	MOVWF       _flag+0 
;glcd.c,1081 :: 		flagTime = 'S';
	MOVLW       83
	MOVWF       _flagTime+0 
;glcd.c,1082 :: 		}
	GOTO        L_main422
L_main423:
;glcd.c,1083 :: 		}
L_main421:
;glcd.c,1084 :: 		break;
	GOTO        L_main381
;glcd.c,1086 :: 		}
L_main380:
	MOVF        _estado+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main382
	MOVF        _estado+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main389
	MOVF        _estado+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main416
L_main381:
;glcd.c,1087 :: 		}
	GOTO        L_main378
;glcd.c,1088 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
