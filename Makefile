# **************************************************************************** #                                                                                                                                   
#                                                                              #                                                                                                                                   
#                                                         :::      ::::::::    #                                                                                                                                   
#    Makefile                                           :+:      :+:    :+:    #                                                                                                                                   
#                                                     +:+ +:+         +:+      #                                                                                                                                   
#    By: cgeoffra <marvin@42.fr>                    +#+  +:+       +#+         #                                                                                                                                   
#                                                 +#+#+#+#+#+   +#+            #                                                                                                                                   
#    Created: 2023/03/06 11:04:45 by cgeoffra          #+#    #+#              #                                                                                                                                   
#    Updated: 2023/03/14 11:16:02 by cgeoffra         ###   ########.fr        #                                                                                                                                   
#                                                                              #                                                                                                                                   
# **************************************************************************** #                                                                                                                                   

NAME = libftprintf.a

SRC = ft_printf.c ft_printf_util.c ft_printf_util2.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):
        gcc -Wall -Werror -Wextra -c $(SRC)
        ar rcs $(NAME) $(OBJ)
        ranlib $(NAME)

clean:
        rm -rf $(OBJ)

fclean: clean
        rm -f $(NAME)

re: fclean all

