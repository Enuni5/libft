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
	get_next_line_utils_bonus.c

SRC_BONUS = ft_lstnew_bonus.c \
	ft_lstadd_front_bonus.c \
	ft_lstsize_bonus.c \
	ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c\
	ft_lstdelone_bonus.c \
	ft_lstclear_bonus.c \
	ft_lstiter_bonus.c \
	ft_lstmap_bonus.c

OBJS = ${SRC:.c=.o}

OBJS_BONUS = ${SRC_BONUS:.c=.o}

NAME = libft.a

CC = gcc

AR = ar rcs

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

.c.o:
	@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME): ${OBJS}
	@${AR} ${NAME} ${OBJS} 
	@echo Libft 🧑‍💻 Compiled 💙

all: ${NAME}

bonus: ${OBJS_BONUS} ${OBJS}
	@${AR} ${NAME} ${OBJS} ${OBJS_BONUS}
	@echo Libft with lists functions 🧑‍💻 Compiled 💙

clean:
	@${RM} ${OBJS} ${OBJS_BONUS} 
	@echo Removing objects 🧹

fclean: clean
	@${RM} ${NAME}
	@echo Also removing library 📚

re: fclean all

.PHONY: all clean fclean re bonus 