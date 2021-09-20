% loads and formats the data.
data = readtable('../bballPlayersData/bball.txt')
data.pos = categorical(data.pos);
% extracts and normalizes the columns of interest.
stats = data{:,[5 6 11:end]};
statsNorm = normalize(stats);

% Perform principal component analysis (PCA) on the data 
[pc, scr, ~, ~, pvar] = pca(statsNorm)

% Plot and find the principal component scores and the percentage 
%   of total variance explained by each principal component.
pareto(pvar)

% Make a three-dimensional scatter plot of the first three 
%   principal component scores in order.
scatter3(scr(:,1), scr(:,2), scr(:,3))
view(110,40)