filename = uigetfile('*.xlsx');
H = filename;
D = xlsread(H);
d = D';
%Peak Current
ct_p_m = mean(d(:,1));
bt_p_m = mean(d(:,2));
ct_p_e = std(d(:,1));
bt_p_e = std(d(:,2));
%fornegative current multiply by -1
peak_mean = [ct_p_m, bt_p_m];
peak_error = [ct_p_e, bt_p_e];
%Current Area
ct_a_m = mean(d(:,3));
bt_a_m = mean(d(:,4));
ct_a_e = std(d(:,3));
bt_a_e = std(d(:,4));
%fornegative current multiply by -1
area_mean = [ct_a_m, bt_a_m];
area_error = [ct_a_e, bt_a_e];
%Rise Time
ct_r_m = mean(d(:,5));
bt_r_m = mean(d(:,6));
ct_r_e = std(d(:,5));
bt_r_e = std(d(:,6));
rise_mean = [ct_r_m, bt_r_m];
rise_error = [ct_r_e, bt_r_e];
%Decay Time
ct_d_m = mean(d(:,7));
bt_d_m = mean(d(:,8));
ct_d_e = std(d(:,7));
bt_d_e = std(d(:,8));
decay_mean = [ct_d_m, bt_d_m];
decay_error = [ct_d_e, bt_d_e];
%Current Width
ct_w_m = mean(d(:,9));
bt_w_m = mean(d(:,10));
ct_w_e = std(d(:,9));
bt_w_e = std(d(:,10));
width_mean = [ct_w_m, bt_w_m];
width_error = [ct_w_e, bt_w_e];
figure(1)
plot_e_a = errorbar(area_mean, area_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_a = bar(area_mean);
axis([0.25 2.75 0 400]);
xticks([1 2]);
xticklabels({'D2IPSC', '+BoNT'});
title('D2IPSC Current Area');
ylabel('Current Area(pA/s)','FontSize',16,'FontWeight','bold');
hold off
figure(2)
plot_e_p = errorbar(peak_mean, peak_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_p = bar(peak_mean);
xticks([1 2]);
xticklabels({'D2IPSC', '+BoNT'});
axis([0.25 2.75 0 700]);
title('D2IPSC Peak Current');
ylabel('Current(pA)','FontSize',16,'FontWeight','bold');
hold off
figure(3)
plot_e_d = errorbar(decay_mean, decay_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_d = bar(decay_mean);
xticks([1 2]);
xticklabels({'D2IPSC', '+BoNT'});
axis([0.25 2.75 0 1]);
title('D2IPSC Decay Time');
ylabel('Time(sec)','FontSize',16,'FontWeight','bold');
hold off
figure(4) 
plot_e_r = errorbar(rise_mean, rise_error, 'linestyle', 'none', 'color', 'k', 'CapSize', 10, 'LineWidth', 3);
hold on
plot_b_r = bar(rise_mean);
xticks([1 2]);
xticklabels({'D2IPSC', '+BoNT'});
axis([0.25 2.75 0 0.25]);
title('D2IPSC Rise Time');
ylabel('Time(sec)','FontSize',16,'FontWeight','bold');
hold off
