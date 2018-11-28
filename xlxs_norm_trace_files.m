clear all
filename = uigetfile('*.xlsx');
H = filename;
trc = xlsread(H);

%to find minimum value within the current
m = min(trc((100055:100166),(1:12)));
% use Max for IPSCs/upward currents
M = max(trc((100055:102000),(1:8)));

% for loop to normalize all traces that are inverted
trc_norm_inv = trc;
 for i = 1:length(m)
trc_norm_inv(:,i) = trc_norm_inv(:,i)/m(i);
end

% for loop to normalize all traces that are not inverted
trc_norm = trc;
 for i = 1:length(m)
trc_norm(:,i) = (-1*(trc_norm(:,i)/m(i)));
 end
 
 % to mak an array of minimum values equal in size to trc
m_rpt = repmat(m,300000,1);

norm_trc_inv = (trc/(min(trc(100055:100166))));

% to plot individual traces
x1 = trc(:,2);
x2 = trc(:,3);
norm_x2 = (-1*(x2/(min(trc((100055:100166),2)))));
plot(norm_x2);
hold on
norm_x3 = (-1*(x3/(min(trc((100055:100166),3)))));
plot(norm_x3);