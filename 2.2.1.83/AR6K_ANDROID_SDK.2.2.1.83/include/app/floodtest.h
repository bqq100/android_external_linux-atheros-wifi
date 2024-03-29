/*------------------------------------------------------------------------------ */
/* <copyright file="floodtest.h" company="Atheros"> */
/*    Copyright (c) 2004-2007 Atheros Corporation.  All rights reserved. */
/*  */
/* This program is free software; you can redistribute it and/or modify */
/* it under the terms of the GNU General Public License version 2 as */
/* published by the Free Software Foundation; */
/* */
/* Software distributed under the License is distributed on an "AS */
/* IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or */
/* implied. See the License for the specific language governing */
/* rights and limitations under the License. */
/* */
/* */
/*------------------------------------------------------------------------------ */
/*============================================================================== */
/* Author(s): ="Atheros" */
/*============================================================================== */

/* Floodtest Application Message Interface */

#define FLOOD_TX 0 /* From Host to Target */
#define FLOOD_RX 1 /* From Target to Host */

struct floodtest_control_s {
    A_UINT32 direction;        /* FLOOD_RX or FLOOD_TX */
    A_UINT32 message_size;     /* in bytes, for SEND/RX only */
    A_UINT32 duration;         /* in seconds, for SEND/RX only */
};

