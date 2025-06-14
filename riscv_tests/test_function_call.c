int other_func(int a, int b, int c, int d);
void _start(void)
{
    register int result asm("a5") = 0;
    result = other_func(1, 2, 3, 4);
}
int other_func(int a, int b, int c, int d)
{
    return a + b + c + d;
}