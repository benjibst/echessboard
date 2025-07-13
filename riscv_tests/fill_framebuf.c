unsigned int *framebuffer = (unsigned int *)0x80000000;
int _start(void){
    for (int j = 0;; j++)
    {
        for (int i = 0; i < 4000; i++)
        {
            if(i&1)
                framebuffer[i] = i;
            else
                *(unsigned int*)(i<<2) = i;
        }
    }
}
