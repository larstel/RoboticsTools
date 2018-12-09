function [w,tmp] = QuaternionOperatorFunc(qV,rotAxe)
% description
    % github.com/larstel/RoboticsTools
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

w = (qV(1).^2 - norm(qV).^2)*v + 2*(qV*v)*qV;
tmp = (2*qV(1)*(cross(qV,v)));
end

