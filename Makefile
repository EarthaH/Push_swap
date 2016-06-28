# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ehansman <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/06/28 15:44:18 by ehansman          #+#    #+#              #
#    Updated: 2016/06/28 15:45:23 by ehansman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

SRC = main.c

OBJ = $(SRC:.c=.o)

CFLAG = -Wall -Werror -Wextra

ATTACH = -L libft/ -lft -lmlx -framework OpenGL -framework AppKit

all: $(NAME)

$(NAME):
	@make -C libft/ fclean
	@make -C libft/
	@clang $(CFLAG) -I lbft/ -c $(SRC)
	@clang $(CFLAG) -o $(NAME) $(OBJ) $(ATTACH)
	@rm -Rf $(OBJ)

clean:
	@/bin/rm -f $(OBJ)
	@make -C libft/ clean

fclean: clean
	@/bin/rm -f $(NAME)
	@make -C libft/ fclean

re: fclean all

norme:
	@norminette $(SRC) wolf.h

q:
	@clang -I lbft/ -c $(SRC)
	@clang $(CFLAG) -o $(NAME) $(OBJ) $(ATTACH)
	@make clean

qr: q run

me: 
	@rm -Rf author
	@whoami > author
