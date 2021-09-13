% fully connected layer
% x is input with n dimensions
% k is a struct with weights, bias, and activation function
% y is output with m dimensions

function y = fullyConnected(x, k)
    activation = str2func(k.func);
    [n, m] = size(k.weight);
    y = zeros(m, size(x,2));
    for i = 1 : m
        for j = 1 : n
            y(i, :) = y(i, :) + activation(x(j, :)*k.weight(j,i)+k.bias(j,i));
        end
    end
    y = y / m;
end
