//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

#define SHORT_DELAY 1
#define RETURN_DELAY 100
#define SEND_DELAY 1
#define DISPLAY_LENGTH 16


void setDataLines(unsigned char data) {
	PRT2DR = (PRT2DR & 0x0F) | (data << 4);
}

void setE(void) {
	PRT2DR |= 0x08;
}

void clearE(void) {
	PRT2DR &= 0xF7;
}

void setRs(void) {
	PRT2DR |= 0x04;
}

void clearRs(void) {
	PRT2DR &= 0xFB;
}

void delay(unsigned int loops) {
	//volatile ensures that the loop will be executed, there will be no optimisation on the operation below
	volatile int i; 
	
	for (i = 0; i < loops; i++);
}

void sendNibble(unsigned char myByte, BOOL isData) {
	
	if (isData) {
		setRs();	
	} else {
		clearRs();
	}
	
	setDataLines(myByte);
	setE();
	clearE();
}

void sendByte(unsigned char myByte, BOOL isData) {
	
	sendNibble(myByte >> 4, isData);
	
	sendNibble(myByte & 0x0F, isData);
	
	delay(SEND_DELAY);
	
}


void returnHome(void) {
	sendByte(0x02, FALSE);
	delay(RETURN_DELAY);
}

void modeSet(BOOL increment, BOOL scroll) {
	unsigned char byteToSend = 0x04; 
	
	if (increment) {
		byteToSend |= 0x02;
	} 
	
	if (scroll) {
		byteToSend |= 0x01;
	}
	
	sendByte(byteToSend, FALSE);
		
}

char displayBuffer[DISPLAY_LENGTH + 1] = {'E', 'W', 'A', ' ', 'L', 'I', 'P', 'I', 'N', 'S', 'K', 'A', (char)0x3F, ' ', ' ', ' ', (char )0};

void refreshDisplay(void) {
	int i;
	
	returnHome();
	for (i = 0; i < 8; i++) {
		sendByte(displayBuffer[i], TRUE);
	}
	//Go to the first character of the second line
	sendByte(0xC0, FALSE);
	for (i = 8; i < DISPLAY_LENGTH; i++) {
		sendByte(displayBuffer[i], TRUE);
	}
	
}

void initDisplay(void) {
	
	delay(4000);

	//Function set
	sendNibble(0x02, FALSE);
	sendByte(0x28, FALSE);
	sendByte(0x06, FALSE);
	sendByte(0x0C, FALSE);
		
}

void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	//unsigned char iDisplay = 0;
	
	initDisplay();
	refreshDisplay();
	
	while (1) {
		delay(10000);
	}
	
	
}
