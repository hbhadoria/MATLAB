
%Creating some variables
myScalar = 10;
myVector = [ 4 5 6];

myVectorCol = [7 8 9];

myMatrix = [4 5 6; 7 8 9; 1 2 3];
myMatrix(1,2);


myMatrix(2,:);

myMatrix(:,3);
myMatrix(3,2:3);

myPie = pi;
myPieSingle = single(myPie);


myBool = true;

myNum = 0;
myNumBool = logical(myNum);

myCell = {[1 2 3] [4 5 6 7];'v1' 'v2'};
myV2 = myCell{1,2};

%My first script, I'm so excited
disp('Go go gadget script');

myMat = randi(3,3);

myMatTrans = myMat'

%create some standard matrices

myZeros = zeros(3);
myOnes = ones(3,4);
myRandomInts = randi(4,5);


%Matrix Multiplication
M1 = [-1 6; 2 4];
M2 = [3 -2; 9 5];
M1 * M2 % matrix multiplication
M1.*M2 %elementwise multiplication


M1./M2 %elementwise division

%If statements
myInput = input('Please enter the number :')

if myInput < 0
    disp("You're kinda negative")
elseif (myInput >= 0) && (myInput <= 0)
    disp("You're right on")
else
    disp("Whoa, that's a big number")
end
   


%Switch Statements

n = input('Enter a number: ');
m = input('Enter another number: ');

action = input('What calculation should I perform?')

switch action
    case 'add'
        output = n+m
    case 'subtract'
        output = n - m
    case 'multiply'
        output = n*m
    case 'divide'
        output = n/m
    otherwise
        disp("Sorry Dave, I can't do that")
end

% for loop

for i = 1:10
    disp(i)
end


for i = 1:2:10
    disp(i)
end


%while loop
value = 50;
n = 5;

while value > 0
    value = value - n;
    disp(value)
end

threshold = 8;
while true
    num = randi(10)
    
    if num > threshold
        disp("Over the limit! Shut Down")
        break
    else
        disp('Everything is OKay')
    end
end


%Functions

function [c] = myFunc(a,b)
%MYFUNC Calculate c from Pythogoras
%   I love right traingles
c = sqrt((a^2) + (b^2) );

end



%Import CSV
myData = csvread('Sine.csv');
plot(myData(:,2))


%Preallocate some memory
tic
m = zeros(1, 1000000);
for i =1:1000000
    m(i) = i;
end
toc


myData = csvread('Sine.csv');
X = myData(:,1);
Y = myData(:,2);
figure
plot(X,Y,'om')
hold on
plot(X,0.5*Y,'^b')
grid on
axis tight
ylim([-1.5, 1.5])
xlabel('Time(s)')
ylabel('Airspeed(m/s)')
title('My Awesome Plot')
legend('European Swallow','African Swallow')
hold off

myIm = imread('cake.jpg');
figure(2)
image(myIm)

figure(3)
imshow(myIm)

%Create some 3D data and plot it

x = -2*pi:0.5:2*pi;
[X, Y] = meshgrid(x);
Z = sin(X) + cos(Y);

figure(4)
surf(X, Y, Z)
title('Super cool Three Dee')
zlabel('Ultimate Power')
colorbar














