% loads and formats the data.
data = readtable('../bballPlayersData/bball.txt')
data.pos = categorical(data.pos);
% extracts and normalizes the columns of interest.
stats = data{:,[5 6 11:end]};
statsNorm = normalize(stats);

% Use classical multidimensional (CMD) scaling to find the reconstructed 
%   coordinates and corresponding eigenvalues
dist = pdist(statsNorm)
[configMat, eigen] = cmdscale(dist)

% Plot the Pareto chart of the eigenvalues
pareto(eigen)

% Make a three-dimensional scatter plot of the first three reconstructed 
%   coordinates in order.
scatter3(configMat(:,1), configMat(:,2), configMat(:,3))
view(110,40)