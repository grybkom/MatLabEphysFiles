clear all
filename = uigetfile('*.xlsx');
H = filename;
I1 = xlsread(H);
V1 = -100:10:130;
V = V1(:);
IV = plot(V,I1, 'LineWidth', 3);