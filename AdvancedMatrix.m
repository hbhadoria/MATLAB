clc, clear, close all

%Data to Work with
someMatrix = [1 2 3; 1 2 3; 6 6 5];
ones(5);

squareOnesV1 = ones(5);
squareOnesV2 = ones(5,5);

threeByFive = ones(3,5);

onesOfSameSize = ones(size(someMatrix))*5;

desiredNumber = 8;
someMatrix = desiredNumber(ones(size(someMatrix)));
someMatrixV2 = ones(size(someMatrix));
someMatrixV2 = someMatrixV2 * desiredNumber;

diagonalMatrixV1 = eye(5);
diagonalMatrixV2 = eye(3,6);
diagonalMatrixV3 = eye(size(someMatrix));

diagonalNonOne = eye(size(someMatrix)) * 5;

newDiagonal = someMatrix .* eye(size(someMatrix));

zeros(5);

