function A = setBackColor(backsize,o2)

A=zeros(backsize(1),backsize(2),3,'uint8');
A1=ones(backsize(1),backsize(2),3,'uint8');
S1=ones(backsize(1),backsize(2),1,'uint8');

if o2==1
    A=A1*255;
elseif o2==2
    A=A1*128;
elseif o2==3
    A;
elseif o2==4
    A(:,:,1)=S1*255;
    A(:,:,2)=S1*0;
    A(:,:,3)=S1*0;
elseif o2==5
    A(:,:,1)=S1*255;
    A(:,:,2)=S1*255;
    A(:,:,3)=S1*0;
elseif o2==6
    A(:,:,1)=S1*0;
    A(:,:,2)=S1*128;
    A(:,:,3)=S1*0;
elseif o2==7
    A(:,:,1)=S1*0;
    A(:,:,2)=S1*255;
    A(:,:,3)=S1*255;
elseif o2==8
    A(:,:,1)=S1*0;
    A(:,:,2)=S1*0;
    A(:,:,3)=S1*255;
elseif o2==9
    A(:,:,1)=S1*128;
    A(:,:,2)=S1*0;
    A(:,:,3)=S1*128;
elseif 02==10
    renk=input('Enter the color code as [R, G, B]: ');
    A(:,:,1)=S1*R;
    A(:,:,2)=S1*G;
    A(:,:,3)=S1*B;
elseif o2==11
    renk=input('Enter the image name, such as " renk.jpg ": ','s');
    A=imread(renk);
end

