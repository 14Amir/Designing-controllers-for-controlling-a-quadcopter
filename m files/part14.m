close all;
clear all;
clc;

s=tf('s');
g=(1)/(s)^2;
c=(s+5)/(s+200);
d=(s+6)/(s+8);


k1=1;
k2=1950;
k3=11349.4;


figure;
rlocus(k1*g);
grid on

figure;
rlocus(k2*g*c);
grid on


figure;
rlocus(k3*g*c*d);
grid on


T1=k1*g/(1+k1*g)
figure;
step(T1);


T2=k2*c*g/(1+k2*c*g)
figure;
step(T2);
grid minor
bode(k2*g*c);

T3=k3*c*g*d/(1+k3*c*g*d)
figure;
step(T3);
grid minor

figure;
bode(k3*g*c*d);

 sisotool(k2*g*c);
sisotool(k3*g*c*d);