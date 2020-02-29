# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: smaniani <smaniani@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/26 11:06:35 by smaniani          #+#    #+#              #
#    Updated: 2020/02/29 12:02:22 by smaniani         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME		=	libasm.a

OBJ			=	ft_strlen.o \
				ft_strcpy.o	\
				ft_strcmp.o	\
				ft_write.o	\
				ft_read.o	\
				ft_strdup.o
				
ASM_COMPILER = nasm -f macho64

all  		: $(NAME)
$(NAME) 	:
			$(ASM_COMPILER) ft_strlen.s
			$(ASM_COMPILER) ft_strcpy.s
			$(ASM_COMPILER) ft_strcmp.s
			$(ASM_COMPILER) ft_write.s
			$(ASM_COMPILER) ft_read.s
			$(ASM_COMPILER) ft_strdup.s
			ar rc  $(NAME) $(OBJ)
clean 		:
			rm -f *.o
fclean 		: clean
			rm -f $(NAME)
re 			: fclean
			make all