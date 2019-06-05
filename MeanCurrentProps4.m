filename = uigetfile('*.xlsx');
H = filename;
DBoNTB = xlsread(H);
dBoNTB = DBoNTB';

filename2 = uigetfile('*.xlsx');
H2 = filename2;
DBoNTA = xlsread(H2);
dBoNTA = DBoNTA';

filename3 = uigetfile('*.xlsx');
H3 = filename3;
Dwtn = xlsread(H3);
dwtn = Dwtn';

filename4 = uigetfile('*.xlsx');
H4 = filename4;
Dwt = xlsread(H4);
dwt = Dwt';

btB_p_m = mean(dBoNTB(:,1));
btA_p_m = mean(dBoNTA(:,1));
wtn_p_m = mean(dwtn(:,1));
wtct_p_m = mean(dwt(:,1));
btB_p_e = std(dBoNTB(:,1));
btA_p_e = std(dBoNTA(:,1));
wtn_p_e = std(dwtn(:,1));
wtct_p_e = std(dwt(:,1));
peak_mean = [wtct_p_m, wtn_p_m, btB_p_m, btA_p_m];
peak_error = [wtct_p_e, wtn_p_e, btB_p_e, btA_p_e];

btB_a_m = mean(dBoNTB(:,2));
btA_a_m = mean(dBoNTA(:,2));
wtn_a_m = mean(dwtn(:,2));
wtct_a_m = mean(dwt(:,2));
btB_a_e = std(dBoNTB(:,2));
btA_a_e = std(dBoNTA(:,2));
wtn_a_e = std(dwtn(:,2));
wtct_a_e = std(dwt(:,2));
area_mean = [wtct_a_m, wtn_a_m, btB_a_m, btA_a_m];
area_error = [wtct_a_e, wtn_a_e, btB_a_e, btA_a_e];

btB_r_m = mean(dBoNTB(:,3));
btA_r_m = mean(dBoNTA(:,3));
wtn_r_m = mean(dwtn(:,3));
wtct_r_m = mean(dwt(:,3));
btB_r_e = std(dBoNTB(:,3));
btA_r_e = std(dBoNTA(:,3));
wtn_r_e = std(dwtn(:,3));
wtct_r_e = std(dwt(:,3));
rise_mean = [wtct_r_m, wtn_r_m, btB_r_m, btA_r_m];
rise_error = [wtct_r_e, wtn_r_e, btB_r_e, btA_r_e];

btB_d_m = mean(dBoNTB(:,4));
btA_d_m = mean(dBoNTA(:,4));
wtn_d_m = mean(dwtn(:,4));
wtct_d_m = mean(dwt(:,4));
btB_d_e = std(dBoNTB(:,4));
btA_d_e = std(dBoNTA(:,4));
wtn_d_e = std(dwtn(:,4));
wtct_d_e = std(dwt(:,4));
decay_mean = [wtct_d_m, wtn_d_m, btB_d_m, btA_d_m];
decay_error = [wtct_d_e, wtn_d_e, btB_d_e, btA_d_e];

figure(1)
plot_e_p = errorbar(peak_mean, peak_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_p = bar(peak_mean);
xticks([1 2 3 4]);
xticklabels({'WtD2IPSC', '+BoNTB', '+BoNTB A2A', '+BoNTA A2A'});
axis([0.25 4.75 0 700]);
title('D2IPSC Peak Current');
ylabel('Current(pA)','FontSize',16,'FontWeight','bold');
hold off

figure(2)
plot_e_a = errorbar(area_mean, area_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_a = bar(area_mean);
axis([0.25 4.75 0 400]);
xticks([1 2 3 4]);
xticklabels({'WtD2IPSC', '+BoNTB', '+BoNTB A2A', '+BoNTA A2A'});
title('D2IPSC Current Area');
ylabel('Current Area(pA/s)','FontSize',16,'FontWeight','bold');
hold off

figure(3) 
plot_e_r = errorbar(rise_mean, rise_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_r = bar(rise_mean);
xticks([1 2 3 4]);
xticklabels({'WtD2IPSC', '+BoNTB', '+BoNTB A2A', '+BoNTA A2A'});
axis([0.25 4.75 0 0.22]);
title('D2IPSC Rise Time');
ylabel('Time(sec)','FontSize',16,'FontWeight','bold');
hold off

figure(4)
plot_e_d = errorbar(decay_mean, decay_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_d = bar(decay_mean);
xticks([1 2 3 4]);
xticklabels({'WtD2IPSC', '+BoNTB', '+BoNTB A2A', '+BoNTA A2A'});
axis([0.25 4.75 0 2.2]);
title('D2IPSC Decay Time');
ylabel('Time(sec)','FontSize',16,'FontWeight','bold');
hold off