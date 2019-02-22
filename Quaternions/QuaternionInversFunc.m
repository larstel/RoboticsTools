function [qInv] = QuaternionInversFunc(q)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
qCon = QuaternionConjugate(q);
qNor = QuaternionNorm(q);
qInv = [qCon(1)/qNor^2 qCon(2)/qNor^2 qCon(3)/qNor^2 qCon(4)/qNor^2]'
end

