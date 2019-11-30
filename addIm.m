function A = addIm(BACK, adder)
mn=size(adder);
x=input('Enter the position coordinates\nOnly left-upper coordinate: ');
BACK(x(2):(x(2)+mn(1)-1), x(1):(x(1)+mn(2)-1), 1)=adder(:,:,1);
BACK(x(2):(x(2)+mn(1)-1), x(1):(x(1)+mn(2)-1), 2)=adder(:,:,2);
BACK(x(2):(x(2)+mn(1)-1), x(1):(x(1)+mn(2)-1), 3)=adder(:,:,3);
A=BACK;
end

