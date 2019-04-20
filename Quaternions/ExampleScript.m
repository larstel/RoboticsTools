% github.com/larstel/RoboticsTools

clc
clear all

%% Initialization
q1 = [sqrt(2)/2 sqrt(2)/2 0 0]'; % 3 + 1i -2j + 1k
q2 = [0.92 0 0 0.38]'; % 2 -1i + 2j + 3k

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
%format rat
qV = [sqrt(3)/2 sqrt(3)/6 sqrt(3)/6 sqrt(3)/6]';

rotAxe = 'custom'

switch rotAxe
    case 'i'
        v = [1 0 0]';
    case 'j'
        v = [0 1 0]';
    case 'k'
        v = [0 0 1]';        
    otherwise

        v = [sqrt(3)/4 1/4 1/2]';
end

% Calculation
quatOp = QuaternionOperatorFunc(qV', v)

%% QuaternionConjugate

qCon = QuaternionConjugate(q1)

%% QuaternionNorm

qNor = QuaternionNorm(q1)

%% QuaternionInvers

qInv = QuaternionInversFunc(quatPro)