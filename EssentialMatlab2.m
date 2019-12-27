%row vector
rvec = [1 2 3 4 5]

%column vector
cvec = [6; 7; 8; 9; 10]
cvec = [6 7 8 9 10]'
cvec2 = rvec'

rvec2 = [11:15]


%matrices

mat1 = [14, 15, 16, 17, 18, 19]

mat2 = [31:33;34:36]

vec1 = [8:14]

vec1(1)

mat1 = [6:8; 1:3:7]

mat1(2,3)

mat1(5)
%Addition
[1 2 3;4 5 6] + [1 1 1;2 2 2]

%Element-wise Multiplication
[1 2 3;4 5 6].*[1 2 3;4 5 6]

vec1 = [1:5]
vec2 = vec1 + 5

mat1 = [14:18; 21:25]
mat2 = mat1 - 8

mat1 + mat2

mat1.*mat2


%Vector Multiplication
[4 5 6] *[1;2;3]

%Matrix Multiplication

[1 2 3; 4 5 6]*[1 2 3]'

%Size of a matrix
size(mat1)


vec1 = [3:6:33]

min(vec1)
max(vec1)

sum(vec1)

prod(vec1)

vec2 = rand(1,5)

prod(vec2)

cumsum(vec1)

cumprod(vec2)

vec = [ 1 2 3 4]
cumprod(vec)

cummin(vec1)
cummax(vec2)

zeros(2,3)
ones(4,5)
ones(3,2)

matrand = rand(2,4)
matrandi = randi([1,20],5,4)

matrand2 = rand(3)
eye(3)

matrand2 * ones(3)

[1 2 3;4 5 6]'

%Inverse Matrix
 A = [1 2;4 5]
 B = inv(A)

A*B


radius = 7

vol = 4*pi*radius^3/3


%volume of the sphere with user input
radius = input('Enter the radius of the sphere:')

vol = 4/3*pi*radius^3


%area of a triangle with user inputs
base = input('Enter the base of the triangle:');
height = input('Enter the height of the triangle:');
tri_area = 1/2*base*height

radius = 33;

circ = 2*pi*radius;

disp(blanks(4)')

formatting output
fprintf('The circumference is: %s.\n', circ)

Saving data
 mat1 = [1:2:7;2:2:8]

 save matrixdata mat1 -ascii
mat2 = [3 6 9 12] 
save matrixdata mat2 -ascii -append


mat1 = [4:4:16;5:5:20]
save matrixdata.dat mat1 -ascii


%Defining a function- area of circumference
function crcmf = circumf(radius)
  crcmf = 2*pi*radius
end

area of a triangle
function tri = triarea(base, height)
tri = 0.5 * base * height
end


function ct = cooltime()
  val1 = input('Time in seconds for the glass to cool 20 degrees: \n')
  if val1 > 25
      disp('Time is above the projected range.')
  else
      if val1 > 10
          disp('That time is within the expected range.')
      else 
          disp('That time is below the expected range.')
  end
end

function spc = spcode()
  
  val1 = input('Enter the number of the center: \n');
  
  switch val1
      case 14
          spc = 'Mt. Crawford';
      case 15
          spc = 'Portland';
      case 16
          spc = 'Syracuse';
      case 17
          spc = 'Calgary';
      otherwise
          spc = 'Not a recognized lab code';
  end
end


is functions
  

str1 = 'card'
ischar(str1)

isletter(str1)

str2 = 'card51'
isletter(str2)

val1 = 14
isreal(val1)

isa(val1, 'int8')

isa(val1, 'double')

vec1 = [5 6 7 8];

for i = 1:length(vec1)
    disp(vec1(i))
end

mat1 = [1:3;4:6];
matsize = size(mat1);
for i = 1:matsize(2)
    for j = 1:matsize(1)
        disp(mat1(j,i))
    end
end


totalweight = 0;
nextitem = 0;

wtlim = input('Max Weight: \n');

while totalweight + nextitem <= wtlim
    totalweight = totalweight + nextitem;
    nextitem = randi([1,5]);
end

fprintf('Total weight is %d grams. \n', totalweight)























