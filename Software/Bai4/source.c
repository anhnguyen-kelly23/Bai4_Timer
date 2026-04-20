/*
 * source.c
 *
 *  Created on: 09-04-2026
 *      Author: Admin
 */
#include "io.h"
#include "system.h"

void main(){
	printf("Hien thi len HEX");
	while (1) {
		IOWR(HEXS_0_BASE, 0, 0);
		IOWR(HEXS_0_BASE, 1, 1);
		IOWR(HEXS_0_BASE, 2, 2);
		IOWR(HEXS_0_BASE, 3, 3);
		IOWR(HEXS_0_BASE, 4, 4);
		IOWR(HEXS_0_BASE, 5, 5);
	}
}
