clc; clear all;close all;
%% bode
s=tf('s')

T_phi=14705.88/s^2;
T_z=1/s^2;

%z Bode Diagram
margin(T_z)
grid on

figure(2)
%phi Bode Diagram
margin(T_phi)
grid on

%% nyquist
s=tf('s')

T_phi=14705.88/s^2;
T_z=1/s^2;

figure(3)
nyquist(T_z)
title('z Nyquist Diagram')
grid on

figure(4)
nyquist(T_phi)
title('phi Nyquist Diagram')
grid on
