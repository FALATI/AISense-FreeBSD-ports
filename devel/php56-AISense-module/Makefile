# $FreeBSD$

PORTNAME=	AISense
PORTVERSION=	0.12
CATEGORIES=	devel
MASTER_SITES=	#
DISTFILES=	#
PKGNAMEPREFIX=	php56-
PKGNAMESUFFIX=	-module

MAINTAINER=	sales@infrassist.com
COMMENT=	Library for getting useful info

LIB_DEPENDS=	libvici.so:security/strongswan

USES=		php:ext

CFLAGS+=	-I/usr/local/include -I. -DIPFW_FUNCTIONS -DTCPSTATES
CFLAGS+=	-Wall -Wredundant-decls -Wnested-externs -Winline

CONFIGURE_ARGS=	--enable-AISense

extract:
	mkdir -p ${WRKSRC}
	cp -r files/* ${WRKSRC}

.include <bsd.port.mk>
