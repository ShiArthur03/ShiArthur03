
%close all; clc; clear all;
load('Saber_i_1.mat');
tstart=0.02678+0.02;
saberi=[Saberi(tstart/5e-9:(0.02+tstart)/5e-9,1)-Saberi(tstart/5e-9),Saberi(tstart/5e-9:(0.02+tstart)/5e-9,2)];
figure(9);
plot(saberi(:,1),saberi(:,2));
ylim([-100,200]);xlim([0,0.02]);


figure(10);
subplot(4,1,1);
plot(t_i_So1_exp-delta_t_exp,i_So1_exp,'b','linewidth',1);
set(gca, 'Fontname', 'Times New Roman')
legend1=legend('Experiment','Location','northwest');
set(legend1,...
    'Position',[0.146302250803859 0.865461847389558 0.258038585209003 0.0542168674698795]);
xlim([0,0.02]);
ylim([-100,200]);
ylabel('\iti\rm_{c (So1)}/A','Fontname','times new Roman');legend('boxoff')
grid on;
grid minor;
subplot(4,1,2);
plot(t_device_DCAC-delta_t_DSED,i_So1_DSED,'r','linewidth',1);
set(gca, 'Fontname', 'Times New Roman')
legend1=legend('DSED simulation with PAT model','Location','northwest');legend('boxoff')
set(legend1,...
    'Position',[0.147106109324761 0.560240963855421 0.333601286173633 0.0542168674698795]);
xlim([0,0.02]);
ylim([-100,200]);
ylabel('\iti\rm_{c (So1)}/A','Fontname','times new Roman');
grid on;
grid minor;
subplot(4,1,4);
plot(t_So1_simulink-delta_t_simulink,i_So1_simulink,'k','linewidth',1);
set(gca, 'Fontname', 'Times New Roman')
legend1=legend('Simulink simulation with ideal model','Location','northwest');legend('boxoff')
set(legend1,...
    'Position',[0.14630225080386 0.262048192771084 0.364147909967846 0.0542168674698795]);
xlim([0,0.02]);
ylim([-100,200]);
ylabel('\iti\rm_{c (So1)}/A','Fontname','times new Roman');
xlabel('\itt\rm/s','Fontname','times new Roman');
grid on;
grid minor;

subplot(4,1,3);
plot(saberi(:,1),1.5*saberi(:,2),'m','linewidth',1);
set(gca, 'Fontname', 'Times New Roman')
legend1=legend('Saber simulation with physical model','Location','northwest');legend('boxoff')
set(legend1,...
    'Position',[0.14630225080386 0.262048192771084 0.364147909967846 0.0542168674698795]);
xlim([0,0.02]);
ylim([-100,200]);
ylabel('\iti\rm_{c (So1)}/A','Fontname','times new Roman');
grid on;
grid minor;
set(gcf,'color','w');
