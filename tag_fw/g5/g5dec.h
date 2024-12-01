#ifndef __GROUP5__
#define __GROUP5__
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>

//
// Group5 1-bit image compression library
// Written by Larry Bank
// Copyright (c) 2024 BitBank Software, Inc.
//
// Use of this software is governed by the Business Source License
// included in the file ./LICENSE.
//
// As of the Change Date specified in that file, in accordance with
// the Business Source License, use of this software will be governed
// by the Apache License, Version 2.0, included in the file
// ./APL.txt.
//
// The name "Group5" is derived from the CCITT Group4 standard
// This code is based on a lot of the good ideas from CCITT T.6
// for FAX image compression, but modified to work in a very
// constrained environment. The Huffman tables for horizontal
// mode have been replaced with a simple 2-bit flag followed by
// short or long counts of a fixed length. The short codes are
// always 3 bits (run lengths 0-7) and the long codes are the
// number of bits needed to encode the width of the image.
// For example, if a 320 pixel wide image is being compressed,
// the longest horizontal run needed is 320, which requires 9
// bits to encode. The 2 prefix bits have the following meaning:
// 00 = short, short (3+3 bits)
// 01 = short, long (3+N bits)
// 10 = long, short (N+3 bits)
// 11 = long, long (N+N bits)
// The rest of the code works identically to Group4 2D FAX
//
// Caution - this is the maximum number of color changes per line
// The default value is set low to work embedded systems with little RAM
// for font compression, this is plenty since each line of a character should have
// a maximum of 7 color changes
// You can define this in your compiler macros to override the default vlaue
//

// should be enough to do the largest screens we have on 8051-based tags (except for certain manufacturers)
#define MAX_IMAGE_FLIPS 640

// Horizontal prefix bits
enum {
    HORIZ_SHORT_SHORT=0,
    HORIZ_SHORT_LONG,
    HORIZ_LONG_SHORT,
    HORIZ_LONG_LONG
};

// Return code for encoder and decoder
enum {
    G5_SUCCESS = 0,
    G5_INVALID_PARAMETER,
    G5_DECODE_ERROR,
    G5_UNSUPPORTED_FEATURE,
    G5_ENCODE_COMPLETE,
    G5_DECODE_COMPLETE,
    G5_NOT_INITIALIZED,
    G5_DATA_OVERFLOW,
    G5_MAX_FLIPS_EXCEEDED
};
//
// Decoder state
//
typedef struct g5_dec_image_tag
{
    int iWidth, iHeight; // image size
    int iError;
    int y; // last y value drawn
    int iVLCSize;
    int iHLen; // length of 'long' horizontal codes for this image
    int iPitch; // width in bytes of output buffer
    uint32_t u32Accum; // fractional scaling accumulator
    uint32_t ulBitOff, ulBits; // vlc decode variables
    __xdata uint8_t *pSrc, *pBuf; // starting & current buffer pointer
    __xdata int16_t *pCur, *pRef; // current state of current vs reference flips
    int16_t CurFlips[MAX_IMAGE_FLIPS];
    int16_t RefFlips[MAX_IMAGE_FLIPS];
} G5DECIMAGE;

#define TIFFMOTOLONG(p) (((uint32_t)(*p)<<24UL) + ((uint32_t)(*(p+1))<<16UL) + ((uint32_t)(*(p+2))<<8UL) + (uint32_t)(*(p+3)))

extern int g5_decode_init(__xdata G5DECIMAGE *pImage, int iWidth, int iHeight, __xdata uint8_t *pData, int iDataSize) __reentrant;
extern int g5_decode_line(__xdata G5DECIMAGE *pPage, __xdata uint8_t *pOut) __reentrant;

#define TOP_BIT 0x80000000
#define MAX_VALUE 0xffffffff
// Must be a 32-bit target processor
#define REGISTER_WIDTH 32
#define BIGUINT uint32_t

#endif // __GROUP5__
