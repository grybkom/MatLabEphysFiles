clear all
filename = uigetfile('*.xlsx');
H = filename;
D = xlsread(H);
d = D';
ctp = -1*(d(:,1));
btp = -1*(d(:,2));
cell1 = [ctp(1,:), btp(1,:)];
cell2 = [ctp(2,:), btp(2,:)];
cell3 = [ctp(3,:), btp(3,:)];
cell4 = [ctp(4,:), btp(4,:)];
cell5 = [ctp(5,:), btp(5,:)];
cell6 = [ctp(6,:), btp(6,:)];
figure(1)
plot (cell1,'LineWidth', 3, 'color', 'k', 'Marker', 'd');
hold on 
plot (cell2,'LineWidth', 3, 'color', 'k', 'Marker', 'd');
hold on
plot (cell3,'LineWidth', 3, 'color', 'k', 'Marker', 'd');
hold on
plot (cell4,'LineWidth', 3, 'color', 'k', 'Marker', 'd');
hold on
plot (cell5,'LineWidth', 3, 'color', 'k', 'Marker', 'd');
hold on
plot (cell6,'LineWidth', 3, 'color', 'k', 'Marker', 'd');
hold on
axis([0.5 2.5 -900 0])
xticks([1 2])
xticklabels({'D2 IPSC', '+BoNT'});
ylabel('Current(pA)','FontSize',16,'FontWeight','bold')
hold off
