#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>

size_t	ft_strlen(char *str);
char	*ft_strcpy(char *str, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fd, void *buf, size_t count);
char	*ft_strdup(const char *s);

int main()
{

	char *dst;
	int fd;
	int compt;
	char *str;
	compt = 5;
	str = malloc(compt);
	dst = malloc(sizeof(char) * 1);

	printf("\n\nTESTEUR STRLEN\n\n");

	printf("Mon Programme : %lu\n", ft_strlen("TEST"));
	printf("Fonction Strlen : %lu\n", strlen("TEST"));
	printf("Mon Programme : %lu\n", ft_strlen("Ceci est un test tres constructif"));
	printf("Fonction Strlen : %lu\n", strlen("Ceci est un test tres constructif"));

	printf("\nTESTEUR STRCPY\n\n");

	printf("Mon Programme : %s\n", ft_strcpy(dst, "salut"));
	printf("Fonction Strcpy : %s\n", strcpy(dst, "salut"));

	printf("\nTESTEUR STRCMP\n\n");

	printf("Mon Programme : %d\n", ft_strcmp("salut", "salut"));
	printf("Fonction Strcmp : %d\n", strcmp("salut", "salut"));
	printf("Mon Programme : %d\n", ft_strcmp("salut ca va", "salut ca"));
	printf("Fonction Strcmp : %d\n", strcmp("salut ca va", "salut ca"));
	printf("Mon Programme : %d\n", ft_strcmp("salut ca va", "salut mec"));
	printf("Fonction Strcmp : %d\n", strcmp("salut ca va", "salut mec"));

	printf("\nTESTEUR WRITE\n\n");

	printf("Mon Programme : %zd\n", ft_write(1, "bonjour\n", 8));
	printf("Fonction Write : %zd\n", write(1, "bonjour\n", 8));
	printf("Mon Programme : %zd\n", ft_write(0, "Yop  t\n", 7));
	printf("Fonction Write : %zd\n", write(0, "Yop  t\n", 7));
	printf("Mon Programme : %zd\n", ft_write(-1, "ca va\n", 6));
	printf("Fonction Write : %zd\n", write(-1, "ca va\n", 6));

	printf("\nTESTEUR READ\n\n");

	fd = open("test.txt", O_RDONLY);
	printf("Mon Programme : %zd\n", ft_read(fd, str, compt));
	fd = open("test.txt", O_RDONLY);
	printf("Fonction Read : %zd\n", read(fd, str, compt));
	printf("Mon Programme : %zd\n", ft_read(-1, str, compt));
	printf("Fonction Read : %zd\n", read(-1, str, compt));

	printf("\nTESTEUR STRDUP\n\n");

	printf("Mon Programme : %s\n", ft_strdup("slt"));
	printf("Fonction Strdup : %s\n", strdup("slt"));
	return (0);
}
