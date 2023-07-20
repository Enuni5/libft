SRC = ft_atoi.c \
	ft_bzero.c \
	ft_calloc.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_itoa.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c \
	ft_split.c \
	ft_strchr.c \
	ft_strdup.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strmapi.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_tolower.c \
	ft_toupper.c \
	ft_printf.c \
	printchars.c \
	printdigits.c \
	printhexa.c \
	get_next_line_bonus.c \
	get_next_line_utils_bonus.c \
	ft_lstnew_bonus.c \
	ft_lstadd_front_bonus.c \
	ft_lstsize_bonus.c \
	ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c\
	ft_lstdelone_bonus.c \
	ft_lstclear_bonus.c \
	ft_lstiter_bonus.c \
	ft_lstmap_bonus.c \
	ft_atof.c

OBJS = ${SRC:.c=.o}

NAME = libft.a

CC = gcc

AR = ar rcs

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

.c.o:
	@${CC} -g ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME): ${OBJS}
	@${AR} ${NAME} ${OBJS} 
	@echo Libft 🧑‍💻 Compiled 💙

all: norminette ${NAME}

norminette: 
	@echo "\n *** CHECKING 42 NORMINETTE AT LIBFT ***\n"
	@norminette .

clean:
	@${RM} ${OBJS}
	@echo Removing objects 🧹

fclean: clean
	@${RM} ${NAME}
	@echo Also removing library 📚

re: fclean all

.PHONY: all clean fclean re 