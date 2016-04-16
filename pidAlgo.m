clear all
clc

num = input('Please set a numerator of transfer function: \n');
den = input('Please set a denumerator of transfer function: \n');

reg = optimalModule(num, den, 1);
P = reg(2);
I = reg(1);
q = psd([P I], 2);
Q0 = q(1);
Q1 = q(2);
sim('zad');

hold all
plot(data(:, 1), data(:, 2)); title('oven regulation'); xlabel('time [t]'); ylabel('temperature [°C]'); grid on
reg = naslin(0.1, [1 1 0.2], 1);
P = reg(1);
I = reg(2);
q = psd([P I], 2);
Q0 = q(1);
Q1 = q(2);
sim('zad');
plot(data(:, 1), data(:, 2));

reg = graham(0.1, [1 1 0.2], 1);
P = reg(1);
I = reg(2);
q = psd([P I], 2);
Q0 = q(1);
Q1 = q(2);
sim('zad');
plot(data(:, 1), data(:, 2));

reg = butterworth(0.1, [1 1 0.2], 1);
P = reg(1);
I = reg(2);
q = psd([P I], 1);
Q0 = q(1);
Q1 = q(2);
sim('zad');
plot(data(:, 1), data(:, 2));
legend('Nasline method', 'Optimal module method', 'Graham-Lantthrop satandard polynom method', 'Butterworth standard polynome method');