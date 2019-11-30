% This program works with images 
% MATLAB and user-added images can be used
% Choose a background, then add the images you want
% The resolution, size and brightnes can be changed
% Some effect can be applied
% At the end, you can save the image

while true
    fprintf('IMAGE SHOPPER\n');
    fprintf('Please choose a background\n');
    fprintf('Background can be a color or an image\n');
    fprintf('1 Color\n2 Image\n');
    o=input('Selection: ');
    backsize=[1,1];
    
    if o==1
        backsize=input('\nSize of backgorund: [vertical, horizontal]\n');
        backColors();
        o2=input('Selection: ');
        if o2==0
            return;
        end
        BACK=setBackColor(backsize, o2);
        imshow(BACK);
    elseif o==2
        BACK=setBackColor(backsize, 11);
        imshow(BACK);
        q=input('Do you want to resize it? Y/N\n','s');
        if q=='Y'
            qr=input('Resizing scale: (0.5, 1.7 etc.): ');
            BACK=imresize(BACK,qr);
            imshow(BACK)
        end
    end
    
    o3=input('1 NEXT\n2 STAY\n3 STOP\n');
    if o3==1
        break;
    elseif o3==2
        continue;
    elseif 03==3
        return;
    end
end
close all;

while true
    close all;
    imtool(BACK);
    oldBACK=BACK;
    o1=input('1 Add image\n2 Add effect\n3 Back\n4 SAVE\n5 EXIT\n');
    if o1==1
        adder=chooseIm();
        o2=input('1 Add the image\n2 Back\n');
        if o2==1
            BACK=addIm(BACK, adder);
        elseif o2==2
            continue;
        end
    elseif o1==2
        BACK=effectIm(BACK);
    elseif o1==3
        BACK=oldBACK;
    elseif o1==4
        sv1=input("File name: ",'s');
        sv2=input("File extension (png, jpg, etc.): ",'s');
        sv=sv1+"."+sv2;
        imwrite(BACK, sv);
    else
        return;
    end
end
