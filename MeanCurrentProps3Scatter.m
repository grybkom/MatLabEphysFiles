filename1 = uigetfile('*.xlsx');
H1 = filename1;
Dwt = xlsread(H1);
dwt = Dwt';
xwt = linspace(0.75,1.25,31);

filename2 = uigetfile('*.xlsx');
H2 = filename2;
DBoNTA = xlsread(H2);
dBoNTA = DBoNTA';
xBoNTA = linspace(1.75,2.25,32);

filename3 = uigetfile('*.xlsx');
H3 = filename3;
DBoNTB = xlsread(H3);
dBoNTB = DBoNTB';
xBoNTB  = linspace(2.75,3.25,31);

btB_p_m = mean(dBoNTB(:,1));
btA_p_m = mean(dBoNTA(:,1));
wtct_p_m = mean(dwt(:,1));
btB_p_e = std(dBoNTB(:,1));
btA_p_e = std(dBoNTA(:,1));
wtct_p_e = std(dwt(:,1));
peak_mean = [wtct_p_m, btA_p_m, btB_p_m];
peak_error = [wtct_p_e, btA_p_e, btB_p_e];

btB_a_m = mean(dBoNTB(:,2));
btA_a_m = mean(dBoNTA(:,2));
wtct_a_m = mean(dwt(:,2));
btB_a_e = std(dBoNTB(:,2));
btA_a_e = std(dBoNTA(:,2));
wtct_a_e = std(dwt(:,2));
area_mean = [wtct_a_m, btA_a_m, btB_a_m];
area_error = [wtct_a_e, btA_a_e, btB_a_e];


btB_r_m = mean(dBoNTB(:,3));
btA_r_m = mean(dBoNTA(:,3));
wtct_r_m = mean(dwt(:,3));
btB_r_e = std(dBoNTB(:,3));
BtA_r_e = std(dBoNTA(:,3));
wtct_r_e = std(dwt(:,3));
rise_mean = [wtct_r_m, btA_r_m, btB_r_m];
rise_error = [wtct_r_e, BtA_r_e, btB_r_e];

btB_d_m = mean(dBoNTB(:,4));
btA_d_m = mean(dBoNTA(:,4));
wtct_d_m = mean(dwt(:,4));
btB_d_e = std(dBoNTB(:,4));
btA_d_e = std(dBoNTA(:,4));
wtct_d_e = std(dwt(:,4));
decay_mean = [wtct_d_m, btA_d_m, btB_d_m];
decay_error = [wtct_d_e, btA_d_e, btB_d_e];

figure(1)
plot_e_p = errorbar(peak_mean, peak_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_p = bar(peak_mean);
plot_s_wt_p = scatter(xwt,dwt(:,1),75,'filled', 'k', 'MarkerEdgeColor', 'r');
plot_s_BoNTA_p = scatter(xBoNTA,dBoNTA(:,1),75,'filled', 'k', 'MarkerEdgeColor', 'r');
plot_s_BoNTB_p = scatter(xBoNTB,dBoNTB(:,1),75,'filled', 'k', 'MarkerEdgeColor', 'r');
xticks([1 2 3]);
xticklabels({'Control-D2IPSC', '+BoNTA', '+BoNTB'});
axis([0.25 3.75 0 700]);
title('D2IPSC Peak Current');
ylabel('Current(pA)','FontSize',16,'FontWeight','bold');
hold off

figure(2)
plot_e_a = errorbar(area_mean, area_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_a = bar(area_mean);
plot_s_wt_a = scatter(xwt,dwt(:,2),75,'filled', 'k', 'MarkerEdgeColor', 'r');
plot_s_BoNTA_a = scatter(xBoNTA,dBoNTA(:,2),75,'filled', 'k', 'MarkerEdgeColor', 'r');
plot_s_BoNTB_a = scatter(xBoNTB,dBoNTB(:,2),75,'filled', 'k', 'MarkerEdgeColor', 'r');
axis([0.25 3.75 0 400]);
xticks([1 2 3]);
xticklabels({'WtD2IPSC', '+BoNTA', '+BoNTB'});
title('D2IPSC Current Area');
ylabel('Current Area(pA/s)','FontSize',16,'FontWeight','bold');
hold off

figure(3) 
plot_e_r = errorbar(rise_mean, rise_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_r = bar(rise_mean);
plot_s_wt_r = scatter(xwt,dwt(:,3),75,'filled', 'k', 'MarkerEdgeColor', 'r');
plot_s_BoNTA_r = scatter(xBoNTA,dBoNTA(:,3),75,'filled', 'k', 'MarkerEdgeColor', 'r');
plot_s_BoNTB_r = scatter(xBoNTB,dBoNTB(:,3),75,'filled', 'k', 'MarkerEdgeColor', 'r');
xticks([1 2 3]);
xticklabels({'WtD2IPSC', '+BoNTA', '+BoNTB'});
axis([0.25 3.75 0 0.35]);
title('D2IPSC Rise Time');
ylabel('Time(sec)','FontSize',16,'FontWeight','bold');
hold off

figure(4)
plot_e_d = errorbar(decay_mean, decay_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_d = bar(decay_mean);
plot_s_wt_d = scatter(xwt,dwt(:,4),75,'filled', 'k', 'MarkerEdgeColor', 'r');
plot_s_BoNTA_d = scatter(xBoNTA,dBoNTA(:,4),75,'filled', 'k', 'MarkerEdgeColor', 'r');
plot_s_BoNTB_d = scatter(xBoNTB,dBoNTB(:,4),75,'filled', 'k', 'MarkerEdgeColor', 'r');
xticks([1 2 3]);
xticklabels({'WtD2IPSC', '+BoNTA', '+BoNTB'});
axis([0.25 3.75 0 2.0]);
title('D2IPSC Decay Time');
ylabel('Time(sec)','FontSize',16,'FontWeight','bold');
hold off

% for stats [h,p,ci,stats] = ttest2(dBoNTB(:,4),dwt(:,4))