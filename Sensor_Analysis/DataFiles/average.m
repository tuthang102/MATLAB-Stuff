function [result] = average(data)

time = 0:10:100;
sum= zeros(length(time),1);
for i = 1:length(data)
    linear = interp1(data{i,1},data{i,2},time','pchip');
    sum = sum + linear;
end
result = sum/5;
end
    