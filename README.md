# Machine Learning with MATLAB

​	使用Matlab实现机器学习算法，包括常用模型算法和官方提供的机器学习工具箱。

​		需要在Matlab中安装Statistics and Machine Learning Toolbox

## Map Reduce

[mapper_reducer](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/MapReduce/mapper_reducer.m): 包括了map与reduce函数范式。

- mapper特殊化了计算每个通道的均值

- reducer特殊化了统计最小值

## CNN Component

[activation](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/DeepLearningCNNComponent/activation.m): 实现三种常用的激活函数

  - Sigmoid
  - tanh
  - ELo

[convolution](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/DeepLearningCNNComponent/convolution.m): 实现卷积层操作，带有激活函数

[imgScale](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/DeepLearningCNNComponent/imgScale.m): 裁剪图片

[imageArray](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/DeepLearningCNNComponent/imageArray.m): 将图片数据转化为数组

[pooling](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/DeepLearningCNNComponent/pooling.m): 实现池化层

- mean
- max

[fullyConnected](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/DeepLearningCNNComponent/fullyConnected.m): 实现全连接层，带有激活函数

## 数据集说明

这里有需要的数据集。

bballPlayer.txt: 篮球运动员的信息，包括位置、身高、体重等。

bballStat.txt: 篮球运动员每年的技术数据，包括参加比赛、得分、篮板球等。

## Low Dimensional Analysis：低维分析

[Classical Multi-dimensional Scaling](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/LowDimAnalysis/ClassicalMultidimensionalScaling.m)：

- 首先计算距离对（欧氏距离）
- 根据距离对计算多维的特征值，根据特征值 e 来确定低维近似值是否合理
- 画图分析：如果前p个特征值明显大于其余的，则可以通过这p个维度很好地近似（降维）

[Principal Component Analysis](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/LowDimAnalysis/PrincipalComponentAnalysis.m):

- 一个pca函数解决问题
- 结果的第一个参数是主成分坐标轴，第二个是对应新坐标

## K-means Clustering：聚类

[K-means Clustering](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/KMeansClustering/Kmeans.m)

- kmeans函数解决问题，可以手动设置开始中心，和随机化次数
- 默认欧氏距离，可以尝试更换为相关性或者余弦距离

## Gaussian Mixture Models

[GMM](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/GaussianMixtureModels/GMM.m)

- 拟合高斯混合模型：按照聚类数量需求，拟合n个多维高斯（正态）分布-GMM
- 确定聚类目标：将数据按照GMM概率结果聚类

## Hierarchical Clustering

[Hierarchical](https://github.com/DanferWang/MATLAB-Machine-Learning/blob/main/HierarchicalClustering/Hierarchical.m)

- 确定分层结构：定义聚类距离方式和距离准则
- 划分层次树为类别：根据层次图确定最大聚类数量
