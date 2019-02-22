% github.com/larstel/RoboticsTools

clc
clear all

%% Initialization
q1 = [2 4 -3 1]'; % 3 + 1i -2j + 1k
q2 = [5 -2 1 -3]'; % 2 -1i + 2j + 3k

%% QuaternionProduct

% Calculation with matrix
quatProMa = QuaternionProductWithMatrixFunc(q1,q2)

% Calculation without matrix
quatPro = QuaternionProductWithoutMatrixFunc(q1,q2)

% Calculation with Matlabfunction 
quatProMat = quatmultiply(q1',q2')'

%% QuaternionRotation
% Initialization
format rat
a = [1 1 1]'; % axe
theta = 2*pi/3; % angle

% Calculation
rotQuat = QuaternionRotationFunc(a,theta,'k')

% Inverse
invRotQuat = rotQuat'

%% QuaternionOperator
% Initialization
format rat
qV = [.5 .5 .5]';

% Calculation
quatOp = QuaternionOperatorFunc(qV','k')

%% QuaternionConjugate

qCon = QuaternionConjugate(q1)

%% QuaternionNorm

qNor = QuaternionNorm(q1)

%% QuaternionInvers

qInv = QuaternionInversFunc(quatPro)