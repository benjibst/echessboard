import os
import cv2
import numpy as np

def collapse_pixels(bwimage,out_color):
    if(out_color > 3 or out_color < 0):
        raise ValueError("Output color must be between 0 and 3")
    if(bwimage.shape != (48, 48)):
        raise ValueError("Image must be 48x48 pixels")
    image_collapsed = np.zeros((48,3),dtype=np.uint32)
    for i in range(48):
        for j in range(48):
            pix_in_row = int(j/16) #16 pixels per 32 bit integer because every color takes 2 bits
            x_in_pix = (15 - (j-pix_in_row*16))*2 
            if(bwimage[i,j] == 1):
                image_collapsed[i,pix_in_row] |= (out_color << x_in_pix)
    return image_collapsed

images = os.listdir('images')
for p in images:
    img = cv2.imread(os.path.join('images', p),cv2.IMREAD_UNCHANGED)
    img = cv2.resize(img, (48,48))
    #iterate over pixels in image
    color_conv = (img[:, :, 3] >= 128).astype(np.uint8)
    color = 3 #hardcoded according to LUT in VHDL code
    out_img = collapse_pixels(color_conv, color)
    #print the numpy array in binary format
    for i in range(48):
        for j in range(3):
            print(f"{out_img[i,j]:032b}", end=' ')
        print()
    with open(os.path.join('hexdumps', p + '.txt'), 'wb') as f:
        for i in range(48):
            for j in range(3):
                f.write(out_img[i,j].tobytes())
            
            
