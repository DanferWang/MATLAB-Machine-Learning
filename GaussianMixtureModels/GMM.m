% load and format the data
data = readtable('../bballPlayersData/bball.txt')
data.pos = categorical(data.pos)

% extract and normalize the columns of interest
stats = data{:, [5 6 11: end]}
statsNorm = normalize(stats)

% use a Gaussian Mixture Models to fit the data and configure Replicates, RegularizationValue
GMModels = fitgmdist(statsNorm, 2, "Replicates", 5, "RegularizationValue", 0.02)

% group into two sets and find corresponding probabilities
[groups, ~, prob] = cluster(GMModels, statsNorm)

% perform PCA and plot the transformed data by group
[pcs, scrs] = pca(statsNorm)
scatter3(scrs(:,1), scrs(:,2), scrs(:,3), 10, groups)
view(110, 40)

% visualize group seperation
psort = sortrows(prob, 1)
plot(psort)
xlabel ("Point Ranking")
ylabel ("Clustering Membership Probability")
legend ("Cluster1", "Cluster2")