static int mem[128];
void other_func(void);
int _start(void)
{
    register int result asm("a5") = 0;
    register int fail asm("a6") = 0;
start:
    result += 1;
    result -= 1;
    result = mem[0];
    result = mem[1];
    result = mem[2];
    result = mem[3];
    result = mem[4];
    mem[0] = 1;
    mem[1] = -2;
    mem[2] = 3;
    mem[3] = -4;
    mem[4] = 5;
    if (mem[0] == 1)
    {
        result = mem[0];
    }
    other_func();
    goto start;
}
void other_func(void)
{
    return;
}