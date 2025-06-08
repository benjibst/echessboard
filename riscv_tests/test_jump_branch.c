
int _start(void)
{

    register int result asm("a5") = 0;
    int a = 5, b = 5, c = -3, d = 8;
beg:
    if (a > 10)
        goto end;
    a += 1;
    goto beg;
end:
    while (1)
    {
        /* code */
    }
}
