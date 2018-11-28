clear all
filename = uigetfile('*.xlsx');
H = filename;
num = xlsread(H);
x = num(:,1);
y = num(:,2);
mx = mean(x);
my = mean(y);
% the mean of downward currents will be (-) so multiply them by -1 to
% correctly display the bar graph. 
mx_inv = mx*-1; 
my_inv = my*-1; 
sx = std(x);
sy = std(y);
current = [mx; my];
% for downwar currents current = [mx_inv; my_inv];
error = [sx; sy];
plot_error = errorbar(current, error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_bar = bar(current);
% for paired t-test
[h,p,ci,stats] = ttest(x,y);