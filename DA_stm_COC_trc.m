
clear all
filename = uigetfile('*.xlsx');
H = filename;
trc = xlsread(H);
%to take mean of the baseline for each trace: 
M = mean(trc(5000:5500,:));
trc_norm = trc;
for i = 1:length(M)
trc_norm(:,i) = (100*(trc_norm(:,i)/M(i)));
end;
ba = trc(:,4);
%to select multiple traces: ba = trc(:,4:10);
coc = trc(:,17);
sub_ba = ba(10040:30000);
sub_coc = coc(10040:30000);
% to select muliple traces 
sub_ba = ba(10040:30000,:);
sub_coc = coc(10040:30000,:);
% to take means of rows:
M_sub_ba = mean(sub_ba,2);
M_sub_coc = mean(sub_coc,2);
plot (sub_ba);
hold on
plot (sub_coc);
% plotting graphs of area or amp
    %mean across rows:
Me = mean(trc,2);
    %std across rows:
s1=std(trc,[],2);
errorbar(Me,s1);

% COC area or peak current

M = mean(num(1:14,:));
num_n = num;
for i = 1:length(M)
num_n(:,i) = (100*(num_n(:,i)/M(i)));
end;
M1 = mean(num_n,2);
errorbar(M1,s1);

% means of normalized data
Mean_coc = mean(num_n((21:30),2));
Mean_b = mean(num_n((7:14),2));

base = num_n(5:14,:);
coc = num_n(21:30,:);
Mean_b = mean(base,2);
Mean_c = mean(coc,2);
sb = std(Mean_b);
sc = std(Mean_c);
Mb = mean(Mean_b);
Mc = mean(Mean_c);
current = [Mb; Mc];
error = [sb; sc];
plot_error = errorbar(current, error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_bar = bar(current);

% stderror = std( data ) / sqrt( length( data )); 

% Line of best fit 
% McC1 is y axis values in this case max current
x = ((1:39)');
coeffs = polyfit(x2,McC1, 1);
xFit = linspace(min(x), max(x), 1000);
yFit = polyval(coeffs , xFit);
hold on;
plot(xFit, yFit, 'r-', 'LineWidth', 2);
grid on;