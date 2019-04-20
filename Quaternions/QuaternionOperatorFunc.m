function [result] = QuaternionOperatorFunc(qV, v)
% description
    % github.com/larstel/RoboticsTools

betrag = norm(qV(2:4))
subtraktion = (qV(1)^2 - betrag^2)*v
skalarproduct = dot(qV(2:4),v)
a = (2*skalarproduct*qV(2:4))'
crossproduct = cross(qV(2:4),v)
crossproduct = crossproduct'
b = 2*qV(1)*crossproduct

result = subtraktion+a+b
end

