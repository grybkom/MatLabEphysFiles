clear all
filename = uigetfile('*.xlsx');
H = filename;
trc = xlsread(H);
pre = trc(:,2);
filename2 = uigetfile('*.xlsx');
H2 = filename2;
trc2 = xlsread(H2);
post = trc2(:,2);
figure(1)
plot (pre, 'k', 'LineWidth', 3);
hold on
plot (post, 'b', 'LineWidth', 3);
hold off
