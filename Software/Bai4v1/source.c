/*
 * source.c
 *
 *  Created on: 10-04-2026
 *      Author: Admin
 */
/*
 * source.c
 *
 *  Created on: 09-04-2026
 *      Author: Admin
 */
#include "io.h"
#include "system.h"
#include <unistd.h>
#include <stdio.h>

volatile int *SW_ptr;

void main(){
	// HEXS_0_BASE;
	SW_ptr = SWITCHES_0_BASE;
	unsigned int giay = 0, phut = 0, gio = 0;
	unsigned int data;	// gia tri giay/phut/gio
	unsigned int temp;	// gia tri SW
	unsigned int mode, chuc, dv;

	IOWR(HEXS_0_BASE, 0, 0);
	IOWR(HEXS_0_BASE, 1, 0);
	IOWR(HEXS_0_BASE, 2, 0);

	while (1) {
		temp = *SW_ptr & 0x3FF;
		mode  = (temp >> 8) & 0x3;
		chuc  = (temp >> 4) & 0xF;
		dv = temp & 0xF;
		if (mode != 3) {
			data = (chuc * 10) + dv;
			if (mode == 0) {
				giay = (data > 59) ? 59 : data;
			} else if (mode == 1) {
				phut = (data > 59) ? 59 : data;
			} else if (mode == 2) {
				gio = (data > 23) ? 23 : data;
			}
			IOWR(HEXS_0_BASE, 0, ((giay / 10) << 4) | (giay % 10));
			IOWR(HEXS_0_BASE, 1, ((phut / 10) << 4) | (phut % 10));
			IOWR(HEXS_0_BASE, 2, ((gio / 10)  << 4) | (gio % 10));
			usleep(500000);
		} else {
			IOWR(HEXS_0_BASE, 0, ((giay / 10) << 4) | (giay % 10));
			IOWR(HEXS_0_BASE, 1, ((phut / 10) << 4) | (phut % 10));
			IOWR(HEXS_0_BASE, 2, ((gio / 10)   << 4) | (gio % 10));
			giay++;
			if (giay == 60) {
				giay = 0;
				phut++;
			}
			if (phut == 60) {
				phut = 0;
				gio++;
			}
			if (gio == 24) {
				gio = 0;
			}
			usleep(500000);
		}
	}
}




