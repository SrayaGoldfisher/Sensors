function v = serial2()
%%create by Yaron Samuel and Sraya Goldfisher

com='com6';
 
try
    s=connect(com);
catch
    comfix  
    s=connect(com);
end


disp('take sample');
pause(1);

v=zeros(4,5);

%for trush
fprintf(s,'1');
v1=str2num(fscanf(s));

for k = 1:4
    for i=1:5
        fprintf(s,'1');
        v(k,i)=str2num(fscanf(s));
    end
end

disp('done!');

v=v*5/1023;

end