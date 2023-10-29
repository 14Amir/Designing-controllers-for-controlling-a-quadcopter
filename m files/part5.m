clc; clear all; close all;
%% Z(s)
Gz_step = tf([1],[1 0 0]);
Tz_step = tf([1],[1 0 1]);
Gz_ramp = tf([1],[1 0 0 1]);
Gz_parabolic = tf([1],[1 0 0 0 1]);
figure
step(Gz_step)
figure
step(Tz_step)
figure
step(Gz_ramp)
figure
step(Gz_parabolic)
