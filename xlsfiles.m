% for excel files (.xlsx)
clear all
filename = uigetfile('*.xlsx');
H = filename;
num = xlsread(H);
A = mean(num);
% for negative currents multiply by -1
c = A*-1
s = std(num);
% for paired t-test

[h,p,ci,stats] = ttest(x,y)
% the above tests at the 5% significance level
% to test at different levels of significance e.g. at the 1% level
[h,p] = ttest(x,y,'Alpha',0.01)
mx = mean(x);
my = mean(y);
sx = std(x);
sy = std(y);
current = [mx; my];
error = [sx; sy];
h = bar(current);
hold on
numgroups = size(current, 1); 
numbars = size(current, 2); 
groupwidth = min(0.8, numbars/(numbars+1.5));
 for i = 1:numbars
p = (1:numgroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*numbars);
errorbar(p, current(:,i), error(:,i), 'k', 'linestyle', 'none');
 end

% for axon text files (.atf )
clear all
filename = uigetfile('*.atf');
type ('16506cell_2trace_16506018.atf');
H = filename;
A = importdata(H);