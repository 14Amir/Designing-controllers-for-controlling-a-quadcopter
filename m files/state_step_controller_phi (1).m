%% Control of phi
clc
clear
close all
s=tf('s');
G = (5.55*s^4 + 277.5*s^3 + 5134*s^2 + 41620*s + 124900)/(s^6 + 75*s^5 + 2325*s^4 + 38130*s^3 +348000*s^2 + 1680000*s + 3370000);
G_c = 4.82*(s + 23.29)*(1 + 8.3/s);         % Controller

T = G*G_c/(1 + G*G_c);          % Closed Loop Transfer Function
step(T)
grid minor;
