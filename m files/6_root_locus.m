clc
clear
close all
%% Plots for Z
s = tf('s');
G1 = 1/s^2;
% F=feedback(G1,1);
% Root Locus
figure(1)
rlocus(G1);
% figure(2)
% step(G1)
% sisotool(G1)
%% Plots for phi
s = tf('s');
G2 = 14705.88/s^2;
% F=feedback(G2,1);
% Root Locus
figure(3)
rlocus(G2);
% figure(4)
% step(G2)