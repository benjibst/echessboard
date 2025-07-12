int main(void){
    unsigned int *framebuffer = (unsigned int *)0x80000000;
    for (int j = 0;; j++)
    {
        for (int i = 0; i < 19200; i++)
        {
            framebuffer[i] = j;
        }
    }
}
