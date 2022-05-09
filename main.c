

void    ft_swap(int *a, int *m)
{
    int d;

    d = *a;
    *a = *m;
    *m = d;
}

#include <stdio.h>
int main()
{
    int a = 1910;
    int m = 1805;
    printf("%d %d\n", a, m);
    ft_swap(&a, &m);
    printf("%d %d\n", a, m);

}