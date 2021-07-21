NAME		=	libasm.a

SRCS1		=	ft_strlen.s

SRCS2		=	ft_strcmp.s

SRCS3		=	ft_strcpy.s

SRCS4		=	ft_read.s

SRCS5		=	ft_write.s

SRCS6		=	ft_strdup.s

OBJS		=	${SRCS1:.s=.o} ${SRCS2:.s=.o} ${SRCS3:.s=.o} ${SRCS4:.s=.o} ${SRCS5:.s=.o} ${SRCS6:.s=.o}

COMPIL		=	nasm

CFLAGS		=	-f macho64

RM			=	rm -f

all:			${NAME}

${OBJS}:		
				${COMPIL} ${CFLAGS} ${SRCS1}
				${COMPIL} ${CFLAGS} ${SRCS2}
				${COMPIL} ${CFLAGS} ${SRCS3}
				${COMPIL} ${CFLAGS} ${SRCS4}
				${COMPIL} ${CFLAGS} ${SRCS5}
				${COMPIL} ${CFLAGS} ${SRCS6}

$(NAME):		${OBJS}
				ar rcs ${NAME} ${OBJS}

clean:
				${RM} ${OBJS}

fclean:			clean
				${RM} ${NAME}

re:				fclean all
