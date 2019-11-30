function A = chooseIm()

x1=input('Enter the image name, such as " renk.jpg ": ','s');
addA=imread(x1);
imshow(addA);

while true
    x1=input('1 Resize\n2 Add effect\n3 Choose again\n4 Save\n5 Back\n');
    
    if x1==1
        q=input('Do you want to resize it? Y/N\n','s');
        if q=='Y'
            qr=input('Resizing scale: (0.5, 1.7 etc.): ');
            addA=imresize(addA,qr);
            imshow(addA);
        end
        
    elseif x1==2
        addA=effectIm(addA);
        
    elseif x1==3
        x1=input('Enter the image name, such as " renk.jpg ": ','s');
        addA=imread(x1);
        imshow(addA);
        
    elseif x1==4 || x1==5
        A=addA;
        return;
    end
    
end