clear all
filename = uigetfile('*.xlsx');
H = filename;
trc = xlsread(H);
y = trc(:,1);
x = trc(:,2);
%plot trace to find a stable part of the baseline to normalize with
plot(y,x);
%chose a subset of the baseline to normalize the trace with
norm_subx = x((99800:99990),1);
mean_subx = mean(norm_subx);
norm_x = x-mean_subx;
plot (y,norm_x);
% to plot a line at 0mV
z = zeros(300000,1);
% plot zero line first then trace
plot (z);
hold on
plot(y,norm_x);