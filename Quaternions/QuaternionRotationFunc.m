function [w] = QuaternionRotationFunc(vec,theta,rotAxe)
% rotate a quaternion
    % github.com/larstel/RoboticsTools
u = vec/norm(vec);

quaternion = sym([cos(theta/2); u*sin(theta/2)]);

qV = [.5 .5 .5]';

switch rotAxe
    case 'i'
        v = [1 0 0]';
    case 'j'
        v = [0 1 0]';
    case 'k'
        v = [0 0 1]';
    otherwise
        disp('ERROR! use: i or j or k as third parameter')
        return
end

w = (quaternion(1).^2 - norm(qV).^2)*v + 2*dot(qV,v)*qV + 2*quaternion(1)*cross(qV,v);
end

