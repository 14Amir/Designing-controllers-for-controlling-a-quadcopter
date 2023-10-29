%% lag controller
s=tf('s')

G=1/s^2;
c=(s+2)/(s+1);

figure(1)
nyquist(G*c)
title('lag nyquist diagram')
grid on
figure(2)
bode(G*c);
title('lag bode diagram')
grid on
%% lead controller
s=tf('s')

G=1/s^2;
c=(s+1)/(s+2);

figure(3)
nyquist(G*c)
title('lead nyquist')
figure(2)
bode(G*c);
title('lead bode diagram')
grid on

