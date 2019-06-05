filename = uigetfile('*.xlsx');
H = filename;
WtEGFP = xlsread(H);
dWtEGFP = WtEGFP';
x = linspace(0.75,1.25,6);

wt_p_m = mean(dWtEGFP(:,1));
wt_p_e = std(dWtEGFP(:,1));
peak_mean = [wt_p_m];
peak_error = [wt_p_e];

figure(1)
plot_e_p = errorbar(peak_mean, peak_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_p = bar(peak_mean);
plot_s_p = scatter(x,dWtEGFP(:,1),'filled');
xticks([1]);
xticklabels({'WtD2IPSC'});
axis([0.25 1.75 0 100]);
title('D2IPSC Peak Current');
ylabel('Current(pA)','FontSize',16,'FontWeight','bold');
hold off