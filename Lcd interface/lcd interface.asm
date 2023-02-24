
_main:

;lcd interface.c,20 :: 		void main()
;lcd interface.c,22 :: 		Lcd_Init(); // Initialize LCD
	CALL       _Lcd_Init+0
;lcd interface.c,23 :: 		Lcd_Cmd(_LCD_CLEAR); // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd interface.c,24 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd interface.c,25 :: 		Lcd_Out(1,1,"Hello World");//Write text'Hello World' in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_lcd_32interface+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd interface.c,26 :: 		Lcd_Out(2,1,"I'am Frank M");//Write text'Hello World' in first row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_lcd_32interface+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd interface.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
