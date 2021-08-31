a = linspace(0, 10*pi);
x = sin(a).';
n = size(x,1);
m = ceil(n/2);

k = struct('weight', [], 'bias', [], 'func', '');
k.weight = rand(n, m);
k.bias = rand(n, m);
k.func = 'tanh';

y = fullyConnected(x, k);

subplot(2,1,1);
plot(x);
subplot(2,1,2);
plot(y);