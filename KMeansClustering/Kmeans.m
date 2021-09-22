% load and format the data
data = readtable('../bballPlayersData/bball.txt')
data.pos = categorical(data.pos)

% extract and normalize the columns of interest
stats = data{:, [5 6 11: end]}
statsNorm = normalize(stats)

% Use K-means clustering to group the data into n sets and set the 'replicates'
% 'replicates' is to perform the analysis multiple times with different
% starting centriods and choose the clustering scheme which minimizes the
% sum of distances.
% the default distance metrics is euclidean dist.
group = kmeans(statsNorm, 2, 'Replicates', 5)

% perform PCA and plot the transformed data by group
[pcs, scrs] = pca(statsNorm)
scatter3(scrs(:, 1), scrs(:, 2), scrs(:, 3), 10, group)
view(110, 40)