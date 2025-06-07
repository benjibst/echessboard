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
    for (int i = 0; i < b; i++)
    {
        result += a;
    }
    // 15
    FAIL_IF_NEQ(result, 15);
    for (int i = 0; i < b; i++)
    {
        result -= b;
    }
    // 6 (110)
    FAIL_IF_NEQ(result, 6);
    result |= b;
    // 7 (111)
    FAIL_IF_NEQ(result, 7);
    result &= a;
    // 5 (101)
    FAIL_IF_NEQ(result, 5);
    result ^= b;
    // 101 ^ 011 = 110 (6)
    FAIL_IF_NEQ(result, 6);
    result <<= a;
    // 110 << 5 = 11000000 (192)
    FAIL_IF_NEQ(result, 192);
    result = -result;
    FAIL_IF_NEQ(result, -192);
    result >>= b;
    FAIL_IF_NEQ(result, -24);
    // 24 = 11000
    // -24 =               11111111111111111111111111101000 (in 32-bit two's complement representation)
    // -24 >> 3(logical) = 00011111111111111111111111111101 (in 32-bit two's complement representation)
    result = (unsigned int)result >> b;
    FAIL_IF_NEQ(result, 536870909);
    result = (a < b) ? 1 : 0;
    FAIL_IF_NEQ(result, 0);
    result = (b < a) ? 1 : 0;
    FAIL_IF_NEQ(result, 1);
    result = -result; //-1
    result = (result < a) ? 1 : 0;
    FAIL_IF_NEQ(result, 1);
    result = -result;
    result = ((unsigned int)result < (unsigned int)b) ? 1 : 0;
    FAIL_IF_NEQ(result, 0);
end:
    while (1)
    {
    }
}
