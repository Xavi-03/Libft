# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jtinaut- <jtinaut-@student.42barcelon      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/21 17:34:35 by jtinaut-          #+#    #+#              #
#    Updated: 2024/10/01 18:21:06 by jtinaut-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_atoi.c ft_isdigit.c ft_memmove.c ft_split.c ft_strlcpy.c ft_strtrim.c\
		ft_bzero.c ft_isprint.c ft_memset.c ft_strchr.c ft_strlen.c ft_substr.c\
		ft_calloc.c ft_itoa.c ft_putchar_fd.c ft_strdup.c ft_strmapi.c ft_tolower.c\
		ft_isalnum.c ft_memchr.c ft_putendl_fd.c ft_striteri.c ft_strncmp.c\
		ft_toupper.c ft_isalpha.c ft_memcmp.c ft_putnbr_fd.c ft_strjoin.c ft_strnstr.c\
		ft_isascii.c ft_memcpy.c ft_putstr_fd.c ft_strlcat.c ft_strrchr.c

BONUS_SRC = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c\
			ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c\
			ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJS = ${SRC:.c=.o}

BONUS_OBJS = ${BONUS_SRC:.c=.o}

NAME = libft.a

RM = rm -f

LIB = ar rcs

CC = cc

CFLAGS = -Wall -Wextra -Werror

%.o: %.c Makefile libft.h
	 ${CC} ${CFLAGS} -c $< -o $@


${NAME}: ${OBJS}
				${LIB} ${NAME} ${OBJS} 

all: ${NAME}

clean: 
	${RM} ${OBJS} ${BONUS_OBJS}

fclean: clean
		${RM} ${NAME}

re: fclean all

bonus:	${OBJS} ${BONUS_OBJS} libft.h
		${LIB} ${NAME} ${OBJS} ${BONUS_OBJS}

.PHONY: all clean fclean re bonus
