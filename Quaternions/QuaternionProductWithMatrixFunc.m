function [qProduct] = QuaternionProductWithMatrixFunc(q1,q2)
%Calculate the product of two quaternions with the help of a matrix
    % github.com/larstel/RoboticsTools
qM = [q1(1) -q1(2) -q1(3) -q1(4); q1(2) q1(1) -q1(4) q1(3); q1(3) q1(4) q1(1) -q1(2); q1(4) -q1(3) q1(2) q1(1)];
qProduct = qM*q2;
end

