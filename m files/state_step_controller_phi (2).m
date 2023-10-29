%% for phi
clc
clear
close all
syms s;
A=[zeros(3),eye(3);zeros(3),zeros(3)];
B=[zeros(3);0,0,5.5;11.11,0,0;0,11.11,0];
C=[eye(3),zeros(3)];
phi=(s*eye(6)-A)^-1;
TF=C*phi*B;
myctrb=ctrb(A,B)
rctrb=rank(ctrb(A,B))
%% related plots 
s=tf('s');
tfn=(5.55*s^4 + 277.5*s^3 + 5134*s^2 + 41620*s + 124900)/(s^6 + 75*s^5 + 2325*s^4 + 38130*s^3 +348000*s^2 + 1680000*s + 3370000);
figure(1)
nyquist(tfn)
sisotool(tfn)
