# $scrotwm$
.include <bsd.xconf.mk>

SUBDIR= lib

PROG=scrotwm
MAN=scrotwm.1

CFLAGS+=-std=c89 -Wall -Wno-uninitialized -ggdb3
CPPFLAGS+= -I${X11BASE}/include
LDADD+=-lutil -L${X11BASE}/lib -lX11 -lXrandr

MANDIR= ${X11BASE}/man/cat

obj: _xenocara_obj

.include <bsd.prog.mk>
.include <bsd.xorg.mk>
