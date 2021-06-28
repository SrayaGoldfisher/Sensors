%This code receives digital signals from Arduino that express analog voltage coming from a network of 7 resistors.
%The code calculates a resistor ratio in a circuit by Kirchhoff's laws.


function r = sensorGrid()
%%this code is only for 6 resistense with grid 2*3
%create by Yaron Samuel and Sraya Goldfisher


v = serial1()

n = 2;
m = 3;

size = n * (m - 1) + m * (n - 1);
A = zeros(size);
A(1,:) = [v(1,1)-v(1,2)   0   0   v(1,1)-v(1,3)   0   0   0];
A(2,:) = [v(1,2)-v(1,1)   0   0   0   v(1,2)-v(1,4)   0   0];
A(3,:) = [0	0   v(1,5)-v(1,6)   0   0   v(1,5)-v(1,3)   0];
A(4,:) = [0   0   v(1,6)-v(1,5)   0   0   0   v(1,6)-v(1,4)];
A(5,:) = [0   v(2,3)-v(2,4)   0   v(2,3)-v(2,1)   0   v(2,3)-v(2,5)   0];
A(6,:) = [0   v(2,4)-v(2,3)   0   0   v(2,4)-v(2,2)   0   v(2,4)-v(2,6)];
A(7,:) = [0	0   v(2,5)-v(2,6)   0   0   v(2,5)-v(2,3)   0];
%dispeqn(A)

disp(A)
[V,D] = eig(A)

rt = V(: ,7);
r = 1 ./ rt;

 
 
end
