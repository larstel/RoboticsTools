clc
clear all

%% Initialization
q1 = [3 1 -2 1]'; % 3 + 1i -2j + 1k
q2 = [2 -1 2 3]'; % 2 -1i + 2j + 3k

%% Calculation with matrix
QuaternionProductWithMatrixFunc(q1,q2)

%% Calculation without matrix
QuaternionProductWithoutMatrixFunc(q1,q2)

%% Calculation with Matlabfunction 
qProduct = quatmultiply(q1',q2')'