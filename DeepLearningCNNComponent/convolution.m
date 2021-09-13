% convolution layer
% a is original matrix
% b is a struct of convolve kernel with weight, bias, and activation function
function c = convolution(a, b)
    [am, an] = size(a);
    [bm, bn] = size(b.mask);
    cm = am - bm + 1;
    cn = an - bn + 1;
    c = zeros(cm, cn);
    activation = str2func(b.activation);
    
    for m = 1:cm
        km = m:m+bm-1;
        for n = 1:cn
            kn = n:n+bn-1;
            c(m,n) = sum(sum(activation(a(km, kn).*b.weight+b.bias).*b.mask));
        end
    end
end
