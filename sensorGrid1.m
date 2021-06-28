function [r A] = sensorGrid1()
%%this code is only for five star. 10 resistens and 5 node
%create by Yaron Samuel and Shria Goldfisher
%

v = serial2()
va=v(1,:);
vb=v(2,:);
vc=v(3,:);
vd=v(4,:);

size = 10;
A = zeros(size);
A(1,:)=[dv(va,2,1)   dv(va,2,3)   0   0   0   dv(va,2,5)   dv(va,2,4)   0   0   0];
A(2,:)=[0   dv(va,3,2)   dv(va,3,4)   0   0   0   0   dv(va,3,5)   dv(va,3,1)   0];
A(3,:)=[0   0   0   dv(va,5,4)   dv(va,5,1)   dv(va,5,2)   0   dv(va,5,3)   0   0];
A(4,:)=[dv(vb,1,2)   0   0   0   dv(vb,1,5)   0   0   0   dv(vb,1,3)   dv(vb,1,4)];
A(5,:)=[0   dv(vb,3,2)   dv(vb,3,4)   0   0   0   0   dv(vb,3,5)   dv(vb,3,1)   0];
A(6,:)=[0   0   dv(vb,4,3)   dv(vb,4,5)   0   0   dv(vb,4,2)   0   0   dv(vb,4,1)];
A(7,:)=[dv(vc,1,2)   0   0   0   dv(vc,1,5)   0   0   0   dv(vc,1,3)   dv(vc,1,4)];
A(8,:)=[dv(vc,2,1)   dv(vc,2,3)   0   0   0   dv(vc,2,5)   dv(vc,2,4)   0   0   0];
A(9,:)=[0   0   0   dv(vc,5,4)   dv(vc,5,1)   dv(vc,5,2)   0   dv(vc,5,3)   0   0];
A(10,:)=[0   0   dv(vd,4,3)   dv(vd,4,5)   0   0   dv(vd,4,2)   0   0   dv(vd,4,1)];

disp(A)
[V,D] = eig(A)
rt = V(: ,10);
r=1./rt;

 
 
end
