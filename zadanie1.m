clear all
clc
[num den] = model(6, 5, 10, 2.5, 5 / sqrt(6));
reg = naslin(num, den, 1);
P = reg(1);
I = reg(2);

q = psd(reg, 2);
Q0 = q(1);
Q1 = q(2);
sim('zad');

figure()
plot(data(:, 1), data(:, 2));
title('Linearized hydraulic with interaction'), xlabel('time [s]'), ylabel('amplitude[-]');
grid
hold all
plot(data1(:, 1), data1(:, 2), '--');
legend('PID', 'PSD');
