clear; close all
folder = 'C:\Users\Orpheus\Desktop\DataFiles\DataFiles';
% Plot Body Temperature 
BT = get_data(folder, 'BT');

figure(1)
plot_data(BT)
ylim([96 100])
title('Body Temperature')
xlabel('Time (s)')
ylabel('Temperature (F)')

% Plot Blood Pressure Diastolic 
BP = get_data(folder, 'BP');
BPD = BP(:,1:2);
BPS = [BP(:,1),BP(:,3)];

figure(2)
subplot(2,1,1)
plot_data(BPD)
title('Blood Pressure')
xlabel('Time (s)')
ylabel('Blood Pressure Diastolic (mm Hg)')
ylim([70 90])

subplot(2,1,2)
plot_data(BPS)
xlabel('Time (s)')
ylabel('Blood Pressure Systolic (mm Hg)')
ylim([110 125])

% Plot Heart Rate
HR = get_data(folder, 'HR');
figure(3)
plot_data(HR)
ylim([70 110])
title('Heart Rate')
xlabel('Time (s)')
ylabel('Heart Rate (bpm)')


% Linear Interpolation
time = 0:10:100;
BT_average = average(BT);
BPD_average = average(BPD);
BPS_average = average(BPS);
HR_average= average(HR);

% Plot average of body temp
figure(4)
plot(time, BT_average,'ro')
title('Body Temperature Average')
xlabel('Time (s)')
ylabel('Temperature (F)')
addgrid_average

%plot average of blood pressure 
figure(5)
subplot(2,1,1)
plot(time, BPD_average,'ro')
title('Blood Pressure Average')
xlabel('Time (s)')
ylabel('Blood Pressure Diastolic (mm Hg)')
addgrid_average

subplot(2,1,2)
plot(time, BPS_average,'ro')
xlabel('Time (s)')
ylabel('Blood Pressure Systolic (mm Hg)')
addgrid_average

% plot average of heart rate
figure(6)
plot(time, HR_average,'ro')
title('Heart Rate Average')
xlabel('Time (s)')
ylabel('Heart Rate (bpm)')
addgrid_average