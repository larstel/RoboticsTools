function [qProduct] = QuaternionProductWithoutMatrixFunc(q1,q2)
%Calculate the product of two quaternions without the help of a matrix

temp0 = q1(1).*q2(1)-dot(q1(2:4),q2(2:4));
temp1 = q1(1)*q2(2:4)+q2(1)*q1(2:4) + cross(q1(2:4),q2(2:4));

qProduct = [temp0; temp1];
end

