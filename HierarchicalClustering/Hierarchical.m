% load, format, and normalize the data
data = readtable("../bballPlayersData//bball.txt");
data.pos = categorical(data.pos);
stats = data{:,[5 6 11:end]};
labels = data.Properties.VariableNames([5 6 11:end]);
statsNorm = normalize(stats);

% extract the data for the guard position (G)
posStats = statsNorm(data.pos == "G",:);

% use the linkage function to create the hierarchical tree, 
%   with the "ward" method to measure distance 
Z = linkage(posStats,"ward");

% assign observations into groups according to the linkage distances
gc2 = cluster(Z,"maxclust",2);
gc3 = cluster(Z,"maxclust",3);

% visualize the clusterings
parallelcoords(posStats,"Group",gc2,"Quantile",0.25,"Labels",labels);
xtickangle(60);
parallelcoords(posStats,"Group",gc3,"Quantile",0.25,"Labels",labels);
xtickangle(60);

% visualize the hierachical clustering
dendrogram(Z);

% evaluate the hierarchical clustering with groups from 2 to 8
ec = evalclusters(posStats,"linkage","silhouette","KList",2:8);
