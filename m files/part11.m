close all;
clear all;
clc;

s=tf('s');
g=(1)/(s)^2;
c=(s+5);

k1=1;
k2=10;

figure;
rlocus(k1*g);
grid on

figure;
rlocus(k2*g*c);
grid on

T1=k1*g/(1+k1*g)
figure;
step(T1);

T2=k2*c*g/(1+k2*c*g)
figure;
step(T2);
grid minor

