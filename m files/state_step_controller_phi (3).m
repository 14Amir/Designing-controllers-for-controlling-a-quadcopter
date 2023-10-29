clc
clear
close all
syms s;
%% for z
A=[0,1;0,0];
B=[0;1];
C=[1,0];
phi=(s*eye(2)-A)^-1
% CM=phi*B
% CM1=simplify(CM)
TF=C*phi*B
% myctrb1=[B,A*B]
myctrb=ctrb(A,B)
rctrb=rank(ctrb(A,B))
%% p.o.
clc
syms zi w s
A1=100*exp((-zi*pi)/(sqrt(1-zi^2))); % if you want "p.o" so you should use this eq by yourself in command window 
B1=solve(A1==1,zi);
c=vpa(B1,3) % c = zita
%% desired poles
Ts= .7; % settling time
zita_omega_n = 4/Ts; % 2 percent standard
w=vpa(zita_omega_n/c(1),3)
desired_s=vpa(-zita_omega_n+j*w*sqrt(1-c(1)^2),3)
%% ackerman's formula
delta=vpa(s^2+2*c(1)*w*s+w^2,3)
co=vpa(fliplr(coeffs(delta)),3);
delta_prime=vpa(co(1)*(A^2)+co(2)*A+co(3)*eye(2),3);
% delta_prime = subs(delta,s,A);
k=vpa([0 1]*((myctrb)^-1)*delta_prime,3)  % ackerman's formula
%% related plots 
s=tf('s');
tfn=1/(s^2 + 11.4*s + 47.8);
figure(1)
nyquist(tfn)
% sisotool(tfn)
