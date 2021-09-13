% pooling layer
% x is input matrix
% stride is the size of kernel
% type can be 'mean', 'max'
function y = pooling(x, stride, type)
    [xi, xj] = size(x);
    yi = ceil(xi / stride(1));
    yj = ceil(xj / stride(2));
    y = zeros(yi,yj);
    type = str2func(type);
    
    for i = 1:yi
        for j = 1:yj
            y(i, j) = type(type(x((1+stride*(i-1)):(stride*i), (1+stride*(j-1)):(stride*j))));
        end
    end
end
