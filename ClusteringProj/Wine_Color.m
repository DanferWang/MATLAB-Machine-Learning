% load, extract, and format the data.
wineData = readtable("WineData.txt");
wineData.Color = categorical(wineData.Color);
numData = wineData{:,1:end-1};

% perform PCA to transform the numerical data then visualize the importance
[~,scrs,~,~,explained] = pca(numData);
pareto(explained);

% cluster the data in 2 groups by k-means
g = kmeans(numData,2,"Replicates",2);
gscatter(scrs(:,1),scrs(:,2),g);

% cluster the data in 2 groups by GMM
gmmModel = fitgmdist(numData,2,"Replicates",2);
g_GMM = cluster(gmmModel,numData);
gscatter(scrs(:,1),scrs(:,2),g_GMM);

% compare the clusterings with the truth
counts = crosstab(wineData.Color,g);
heatmap(counts,"YDisplayLabels",categories(wineData.Color));
counts_GMM = crosstab(wineData.Color,g_GMM);
heatmap(counts,"YDisplayLabels",categories(wineData.Color));
