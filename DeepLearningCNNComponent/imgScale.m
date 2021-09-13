% scale a image
function new_img = imgScale(img, scale)
    n = 2 ^ scale;
    [mR,mT,mD] = size(img);
    mr = floor(mR / n);
    mt = floor(mT / n);
    new_img = zeros(mr, mt, mD, 'uint8');
    for i = 1:mD
        for j = 1:mr
            r = (j - 1) * n + 1 : j * n;
            for k = 1:mt
                c = (k - 1) * n + 1 : k * n;
                new_img(j, k, i) = mean(mean(img(r, c, i)));
            end
        end
    end
end
