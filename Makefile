# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/15 13:58:15 by jbert             #+#    #+#              #
#    Updated: 2015/05/16 20:21:03 by jbert            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libfts.a

SRC		=	ft_isalnum.s ft_isalpha.s ft_isdigit.s ft_isascii.s ft_isprint.s\
			ft_tolower.s ft_toupper.s ft_bzero.s ft_strcat.s ft_puts.s \
			ft_strlen.s ft_memset.s ft_memcpy.s ft_strdup.s ft_cat.s

NASM	= ~/.brew/Cellar/nasm/2.11.08/bin/nasm -f macho64

OBJ		=	$(SRC:.s=.o)

all:	$(NAME)

$(NAME): $(OBJ)
	@echo "Compiling $(NAME)..."
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "DONE"

%.o: %.s
		$(NASM) $<

clean:
		@rm -rf $(OBJ)
		@echo "Cleaned"

fclean: clean
	@rm -rf $(NAME)
	@echo "Fcleaned"

re:	fclean	all

test: all	clean
	@gcc main.c $(NAME)
	@./a.out
	@rm a.out
