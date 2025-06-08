#define FAIL_IF_NEQ(var, val) \
    if ((var != val))         \
    {                         \
        fail = 1;             \
        goto end;             \
    }
int _start(void)
{
    register int result asm("a5") = 0;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    result += 5;
    while (1)
    {
    }
}
