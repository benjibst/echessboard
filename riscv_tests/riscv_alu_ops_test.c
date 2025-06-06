
int test_alu_arithmetic_ops(int a, int b)
{
    int result;

    result = a + b; // add
    result = a - b; // sub
    return result;
}
int test_alu_logic_ops(int a, int b)
{
    int result;

    result = a ^ b; // xor
    result = a | b; // or
    result = a & b; // and
    return result;
}
int test_alu_shifts(int a, int b)
{
    int result;

    result = (unsigned int)a >> (unsigned int)b; // logical right shift
    result = a << b;                             // left shift
    result = a >> b;                             // arithmetic right shift
    return result;
}
int test_alu_slt(int a, int b)
{
    int result;

    result = a < b ? 1 : 0;                             // slt
    result = (unsigned int)a < (unsigned int)b ? 1 : 0; // sltu
    return result;
}
int main(void)
{
    // test logic_ops
    //  01^11 = 10
    //  01|11 = 11
    //  01&11 = 01
    test_alu_logic_ops(1, 3);
    // test arithmetic_ops
    test_alu_arithmetic_ops(1, 2);
    test_alu_arithmetic_ops(-2, 1);
    test_alu_arithmetic_ops(-1, 2);
    // test shifts
    // left shift: 1 << 2 = 4
    test_alu_shifts(1, 2);
    // right shift: 4 >> 2 = 1
    test_alu_shifts(4, 2);
    // shift -1 >> 1 = -1 (arithmetic right shift)
    // shift -1>>1 = 0x7FFFFFFF (logical right shift)
    test_alu_shifts(-1, 1);
}