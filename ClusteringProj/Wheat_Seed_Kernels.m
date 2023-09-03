% loads the data, then extracts the numeric data into a matrix and the 
% existing group numbers into a vector
data = readtable("SeedData.txt");
numData = data{:,1:end-1};
variety = data.variety;

% use k-means clustering into 3 groups
grpK = kmeans(numData, 3);

% use GMM clustering into 3 groups
gmmModel = fitgmdist(numData,3);
grpGMM = cluster(gmmModel,numData);

% use hierarchical clustering into 3 groups
Z = linkage(numData);
grpTree = cluster(Z,"maxclust",3);

% plot data by group using local function plotClusters
plotClusters(numData,grpK,grpGMM,grpTree)
% plot cross-tabulation values using local function plotCrosstabs
plotCrosstabs(variety,grpK,grpGMM,grpTree)

% scatter plots of the transformed data
function plotClusters(data,gk,gm,gt)
[~,scrs] = pca(data);
sz = 8;

clf
tiledlayout(1,3,"TileSpacing","compact","Padding","compact");

ax(1) = nexttile;
gscatter(scrs(:,1),scrs(:,2),gk,[],[],sz)
title("k-Means")

ax(2) = nexttile;
gscatter(scrs(:,1),scrs(:,2),gm,[],[],sz)
title("GMM")

ax(3) = nexttile;
gscatter(scrs(:,1),scrs(:,2),gt,[],[],sz)
title("Hierarchical Tree")

axis(ax,"square")
yticklabels(ax(2:end),[])
figure
end

% heatmaps of the cross-tabluation values
function plotCrosstabs(cats,gk,gm,gt)
clf
t = tiledlayout(1,3,"TileSpacing","compact","Padding","compact");

ax(1) = nexttile;
heatmap(crosstab(gk,cats))
title("k-Means")

ax(2) = nexttile;
heatmap(crosstab(gm,cats))
title("GMM")

ax(3) = nexttile;
heatmap(crosstab(gt,cats))
title("Hierarchical Tree")

figure
end
