# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mealjnei <mealjnei@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/28 17:44:58 by mealjnei          #+#    #+#              #
#    Updated: 2022/04/24 18:04:17 by mealjnei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
LIB1	= ar -rcs 				#r : add files to the archives / s: write object file (.o) into the archive\ or update the existing one

NAME	= libft.a				#library name we are creating

INCLUDE	= libft.h				#header
SRCS	= ft_memset.c ft_bzero.c ft_memcpy.c \
		ft_memchr.c ft_memcmp.c ft_strncmp.c \
		ft_strlen.c ft_strchr.c ft_strncmp.c ft_atoi.c \
		ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_toupper.c ft_tolower.c ft_calloc.c \
		ft_strdup.c ft_memmove.c ft_strrchr.c ft_strnstr.c \
		ft_strlcpy.c ft_strlcat.c ft_putchar_fd.c ft_putstr_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c ft_substr.c ft_split.c \
		ft_strjoin.c ft_striteri.c ft_itoa.c ft_strtrim.c \
		ft_strmapi.c
		
OBJS	= $(SRCS:.c=.o)		#convert .c files to .o object files

BONUS_S	= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
		ft_lstlast.c ft_lstadd_back.c ft_lstclear.c \
		ft_lstdelone.c
# ft_lstdelone.c \
		ft_lstiter.c ft_lstmap.c
BONUS_O	= $(BONUS_S:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJS) $(INCLUDE)			#dependencies for the rule : objs + include || next line: ar -rcs libft.a (.o files)
			$(LIB1) $(NAME) $(OBJS)		

bonus:		$(NAME) $(BONUS_O)
			$(LIB1) $(NAME) $(BONUS_O)

%.o : %.c ${INCLUDE} 		#means that any file ending in .o depends on the same filename ending in .c to be present.
		$(CC) -c $(CFLAGS) -o $@ $<
### $@: automic variable = targets name .o // $<: .c first prerequisite

clean:
			rm -rf $(OBJS) $(BONUS_O)
#targets
fclean:		clean			#dependencies need to be excuted before the target is excuted
			rm -rf $(NAME)

re:			fclean all

#clean > .o // fclean > .o + libft.a