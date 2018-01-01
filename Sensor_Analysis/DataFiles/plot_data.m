function plot_data(data)
markers = ['+','o','*','.','x','s','d','^','v','>','<','p','h'];
for i = 1:length(data)
    hold on
    plot(data{i,1},data{i,2},markers(i))
end
addgrid()
end