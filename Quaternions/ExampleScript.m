% github.com/larstel/RoboticsTools

clc
clear all

%% QuaternionProduct
% Initialization
q1 = [3 1 -2 1]'; % 3 + 1i -2j + 1k
q2 = [2 -1 2 3]'; % 2 -1i + 2j + 3k

% Calculation with matrix
QuaternionProductWithMatrixFunc(q1,q2)

% Calculation without matrix
QuaternionProductWithoutMatrixFunc(q1,q2)

% Calculation with Matlabfunction 
quatmultiply(q1',q2')'

%% QuaternionRotation
% Initialization
format rat
a = [1 1 1]'; % axe
theta = 2*pi/3; % angle

% Calculation
QuaternionRotationFunc(a,theta,'k')

%% QuaternionOperator
% Initialization
format rat
qV = [.5 .5 .5]';

% Calculation
QuaternionOperatorFunc(qV','k')