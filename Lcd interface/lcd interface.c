/* LCD module connections
For the proper functioning of the LCD library, 
you must define, how the pins of LCD are connected to pic microcontroller as given below.
The below definitions tells the compiler, how LCD is connected to the microcontroller.
The two set of definitions are used to provide Data (PORT) and Direction (TRIS) registers.
 */
sbit LCD_RS at RC2_bit;
sbit LCD_EN at RC3_bit;
sbit LCD_D4 at RC4_bit;
sbit LCD_D5 at RC5_bit;
sbit LCD_D6 at RC6_bit;
sbit LCD_D7 at RC7_bit;
sbit LCD_RS_Direction at TRISC2_bit;
sbit LCD_EN_Direction at TRISC3_bit;
sbit LCD_D4_Direction at TRISC4_bit;
sbit LCD_D5_Direction at TRISC5_bit;
sbit LCD_D6_Direction at TRISC6_bit;
sbit LCD_D7_Direction at TRISC7_bit;
// End LCD module connections
void main()
{
 Lcd_Init(); // Initialize LCD
 Lcd_Cmd(_LCD_CLEAR); // Clear display
 Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
 Lcd_Out(1,1,"Hello World");//Write text'Hello World' in first row
 Lcd_Out(2,1,"I'am Frank M");//Write text'Hello World' in first row
}