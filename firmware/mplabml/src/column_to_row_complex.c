
/*******************************************************************************
* Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/

#include "kbutils.h"

void column_to_row_complex(ringb *pringb, int32_t col, int32_t nrows, struct compx *cmpxData, int32_t complen)
{
	int32_t irow;
	int32_t base_index = 0; // REPLACE THIS WHNE THE FUNCTION IS UPDATED
	ringb *rb;

	if (nrows > complen)
		nrows = complen;

	rb = pringb + col;

	for (irow = 0; irow < nrows; irow++) // For each value in the row
	{
		cmpxData[irow].real = (FLOAT)MOD_READ_RINGBUF(rb, base_index++); // Copy sensor data to real part
		cmpxData[irow].imag = 0.0f;
	}

	for (; irow < complen; irow++)
	{
		cmpxData[irow].real = 0.0f;
		cmpxData[irow].imag = 0.0f;
	}
}
