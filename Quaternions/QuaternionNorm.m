function [qNor] = QuaternionNorm(q)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
qNor = sqrt(q(1)^2 + q(2)^2 + q(3)^2 + q(4)^2);
end

