% read in an image as an array with scale
function [img, imgName] = imageArray(path, scale)
    c = cd(path);
    n = length(dir);
    j = 0;
    d = dir(path);
    img = cell(n-2, 1);
    imgName = cell(1,n);
    for k = 1:n
        imgName{k} = d(k).name;
        if(~strcmp(imgName{k},'.') && ~strcmp(imgName{k},'..'))
            j = j + 1;
            imgN = imread(d(k).name);
            cd('../DeepLearningFaceRecog/')
            t = imgScale(flipud(imgN), scale);
            img{k} = (t(:,:,1)+t(:,:,2)+t(:,:,3))/(3);
            c = cd(path);
        end
    end
end
