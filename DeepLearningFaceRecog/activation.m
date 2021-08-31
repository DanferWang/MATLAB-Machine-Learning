% s = activation(type, x, k)
% type: 'sigmoid', 'tanh', 'elo'
% k: scale factor

function s = activation(type, x, k)
    switch type
        case 'sigmoid'
            s = (1-exp(-k*x))./(1+exp(-k*x));
        case 'tanh'
            s = tanh(k*x);
        case 'elo'
            j = x > 0;
            s = zeros(1, length(x));
            s(j) = 1;
    end
end

