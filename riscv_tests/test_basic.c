#define FAIL_IF_NEQ(var, val) \
    if ((var != val))         \
    {                         \
        fail = 1;             \
        goto end;             \
    }
int _start(void)
{
    register const int a asm("a3") = 5;
    register const int b asm("a4") = 3;
    register int result asm("a5") = 0;
    register int fail asm("a6") = 0;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    result += a;
    while (1)
    {
    }
}
