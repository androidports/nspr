#
# The contents of this file are subject to the Netscape Public License
# Version 1.1 (the "NPL"); you may not use this file except in
# compliance with the NPL.  You may obtain a copy of the NPL at
# http://www.mozilla.org/NPL/
# 
# Software distributed under the NPL is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the NPL
# for the specific language governing rights and limitations under the
# NPL.
# 
# The Initial Developer of this code under the NPL is Netscape
# Communications Corporation.  Portions created by Netscape are
# Copyright (C) 1998 Netscape Communications Corporation.  All Rights
# Reserved.
#

#
# Config stuff for SCO OpenServer for x86.
# SCO OpenServer 5, based on SVR3.2, is intended for small to
# medium customers.
#

include $(MOD_DEPTH)/config/UNIX.mk

CC			= cc -b elf -KPIC
CCC			= $(NSDEPTH)/build/hcpp CC +.cpp +w
RANLIB			= /bin/true

DEFINES			+= -D_PR_LOCAL_THREADS_ONLY
#
# -DSCO - Changes to Netscape source (consistent with AIX, LINUX, etc..)
# -Dsco - Needed for /usr/include/X11/*
#
OS_CFLAGS		= -DSYSV -D_SVID3 -DHAVE_STRERROR -D_PR_NEED_H_ERRNO -DSCO -Dsco
#OS_LIBS			= -lpmapi -lsocket -lc

MKSHLIB			= $(LD) $(DSO_LDOPTS)

CPU_ARCH		= x86
ARCH			= sco

NOSUCHFILE		= /no-such-file

BSDECHO			= /bin/echo

DSO_LDOPTS		= -b elf -G
