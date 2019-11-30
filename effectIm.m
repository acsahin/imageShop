function A = effectIm(BACK)
fprintf('1 Salt & Peppers\n');
fprintf('2 Brightness(x<1 darker,  x>1 brighter)\n3 Grayscale\n');
o=input('');
if o==1
    tole=input('Density (0 to 1): ');
    BACK=imnoise(BACK,'salt & pepper', tole);
    imshow(BACK);
    A=BACK;
elseif o==2
    tole=input('Scale (x<1 darker,  x>1 brighter): ');
    BACK=BACK.*tole;
    imshow(BACK);
    A=BACK;
elseif o==3
    BACK=rgb2gray(BACK);
    imshow(BACK);
    A=BACK;
end
end