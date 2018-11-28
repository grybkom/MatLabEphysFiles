clear all
filename = uigetfile('*.xlsx');
H = filename;
D = xlsread(H);
d = D';
ctp = d(:,1);
btp = d(:,2);
ctp_n = 100*(rdivide(ctp,ctp));
btp_n = 100*(rdivide(btp,ctp));
cell1 = [ctp_n(1,:), btp_n(1,:)];
cell2 = [ctp_n(2,:), btp_n(2,:)];
cell3 = [ctp_n(3,:), btp_n(3,:)];
cell4 = [ctp_n(4,:), btp_n(4,:)];
cell5 = [ctp_n(5,:), btp_n(5,:)];
cell6 = [ctp_n(6,:), btp_n(6,:)];
cell7 = [ctp_n(7,:), btp_n(7,:)];
 plot (cell1,'LineWidth', 3);
hold on 
plot (cell2,'LineWidth', 3);
hold on
plot (cell3,'LineWidth', 3);
hold on
plot (cell4,'LineWidth', 3);
hold on
plot (cell5,'LineWidth', 3);
hold on
plot (cell6,'LineWidth', 3);
hold on
plot (cell7,'LineWidth', 3);