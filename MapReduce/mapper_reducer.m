function mapper_reducer(data)
    res = mapreduce(data, @mapper, @reducer)
    output = readall(res)
end

function mapper(data, info, intermediateStore)
    add(intermediateStore, 'AVG_Red', struct('Filename', info.Filename, 'Val', mean(mean(data(:,:,1)))));
    add(intermediateStore, 'AVG_Green', struct('Filename', info.Filename, 'Val', mean(mean(data(:,:,2)))));
    add(intermediateStore, 'AVG_Blue', struct('Filename', info.Filename, 'Val', mean(mean(data(:,:,3)))));
end

function reducer(key, intermediateIter, outputStore)
    minVal = 255;
    minImageFilename = '';
    while hasnext(intermediateIter)
        value = getnext(intermediateIter);
        if value.Val < minVal
            minVal = value.Val;
            minImageFilename = value.Filename;
        end
    end
   add(outputStore, ['Maximal_' key], minImageFilename);
end
