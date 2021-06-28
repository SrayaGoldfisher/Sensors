%A communication code that receives signals from Arduino that express an analog voltage 
%that comes from a network of 7 resistors and puts them into processing in a MATLAB

%%create by Yaron Samuel and Sraya Goldfisher

function v = serial1()

com = 'com6';
 
try
    s = connect(com);
catch
    comfix  
    s = connect(com);
end


disp('take sample');
pause(1);

v=zeros(2,6);

%for trush
fprintf(s,'1');
v1 = str2num(fscanf(s));

for k = 1:2
    for i = 1:6
        fprintf(s,'1');
        v(k,i) = str2num(fscanf(s));
    end
end

disp('done!');

v = v * 5 / 1023;

end
