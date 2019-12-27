% val1 = '7'
% val2 = 'degrees'
% val3 = 7

% val1 + 3

% val1 = 'Virginia'
% val2 = 'Oregon'
% [val1, ' ',  val2]


%strcat function

% str1 = '95 '
% str2 = ' degrees'
% [str1 str2]
% strcat(str1, str2)

% %d for decimal, %f for floating point, %s is a string
% %c is a character

% radius = input("Enter the circle's radius:\n");
% circ = 2 * pi * radius;
% str1 = sprintf('The circumference is : %d.\n', circ);
% str2 = sprintf('The circumference is: %f.\n', circ);
% disp(str1)
% disp(str2)

% %deblank function
% str1 = '   degrees';
% str2 = '   95  ';
% 
% [str1 str2];
% [str2 str1];
% 
% str2 = deblank(str2)
% str1 = deblank(str1)
% 
% str1;
% str2;
% 
% %strtrim function
% 
% str1 = strtrim(str1)
% str2 = strtrim(str2)

% str1 = upper(str1)
% str1 = lower(str1)


% str1 = 'arl'
% str2 = '19arl73'
% 
% strcmp(str1, str2)
% 
% strfind(str2, str1)

% str3 = 'spr';
% 
% str2 = strrep(str2, str1, str3)


% val1 = 6.94;
% 
% str1 = num2str(val1);
% 
% val2 = 5;
% 
% str2 = int2str(val2);
% 
% str3 = int2str(val1);
% 
% str4 = num2str(val2);
% 
% str5 = num2str(pi, 10);
% 
% val3 = str2double(str5);
% 
% 
% vec1 = str2num(['3 14 15 9'])

% x = 15:7:64;
% y = 31:-2:17;
% plot(x,y, 'b^')
% axis([12 70 12 40])
% xlabel('Milliseconds')
% ylabel('Position change in nm')
% title('Position Change by Time')


% x = 15:7:64;
% y = sqrt(x) + 8;
% plot(x,y, 'b^')
% axis([0 70 0 40])
% xlabel('Milliseconds')
% ylabel('Position change in nm')
% title('Position Change by Time')

% subplot(2,2,[1,3])
% storeid = 147:150;
% sales = [241 503 541 398];
% bar(storeid, sales)
% title('Sales by Store')
% xlabel('StoreID')
% ylabel("Sales in '000s")
% 
% subplot(2,2,2)
% storeid = 147:150;
% sales = [241 503 541 398];
% barh(storeid, sales)
% title('Sales by Store')
% ylabel('StoreID')
% xlabel("Sales in '000s")
% 
% subplot(2,2,4)
% sales2 = randi(200, 1, 31);
% histogram(sales2)
% xlabel('Sales')
% ylabel('Count')
% title('Sales by Amount')


% storeid = [147:150];
% sales = [241, 503, 541, 398];
% clf
% bar(storeid, sales, 0.8)
% title('Sales by Store')
% xlabel('StoreID')
% ylabel("Sales in '000s")

% storeid = 147:150;
% sales = [150, 200, 125, 275];
% clf
% bar(storeid, sales)


% vec1 = [4 21 9 31 9 14]
% mean(vec1)
% var(vec1)
% sqrt(var(vec1))
% std(vec1)

% median(vec1)
% mode(vec1)

a= [1 3 -2;3 5 6;2 4 3];
b= [5 7 8]';

linsolve(a, b)



