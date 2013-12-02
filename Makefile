# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fpoggi <fpoggi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/29 17:22:50 by fpoggi            #+#    #+#              #
#    Updated: 2013/11/29 19:01:39 by fpoggi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = ft_isalpha.c ft_isdigit.c ft_putchar.c ft_toupper.c ft_isalnum.c\
ft_isascii.c ft_isprint.c ft_tolower.c
OBJ = $(subst .c, .o, $(SRC)) 

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)
%.o: %.c
		$(CC) -o $@ -c $^ $(CFLAGS)
clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
