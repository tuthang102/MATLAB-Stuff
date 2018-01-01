function [result] = get_data(folder, variable)
files=dir(fullfile(folder,'*.txt'));
result = {};
for i = 1:length(files)
    data = {};
    content = fileread(files(i).name) ;
    if strcmp(variable, 'BT') && strcmp(files(i).name(1:2),'BT')  
        data = textscan(content, '%f %f %s');
    elseif strcmp(variable, 'HR') && strcmp(files(i).name(1:2),'HR')
        data = textscan(content, '%f %f %s %s');
    elseif strcmp(variable, 'BP') && strcmp(files(i).name(1:2),'BP') 
        data = textscan(content, '%f %f %f');
    end
    result = [result;data];
end
end