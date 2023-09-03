% load data and extract numeric data into a matrix.
bondData = readtable("BondData.txt");
bonds = bondData.Variables;

% k-means cluster bonds into 3 groups using cosine distance
kGrp = kmeans(bonds,3,"Distance","cosine");

% determine the optimal number of clusters
eva = evalclusters(bonds,"kmeans","silhouette","KList",2:7,"Distance","cosine");

% use the optimal number of clusters
numClust = eva.OptimalK;
kGrp = kmeans(bonds,numClust,"Distance","cosine");
silhouette(bonds,kGrp,"cosine");