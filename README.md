# Machine Learning with MATLAB

​    使用Matlab实现机器学习算法，包括常用模型算法和官方提供的机器学习工具箱。

​        需要在Matlab中安装Statistics and Machine Learning Toolbox

## MapReduce与CNN

### Map Reduce

[mapper_reducer](./MapReduce/mapper_reducer.m): 包括了map与reduce函数范式。

- mapper特殊化了计算每个通道的均值

- reducer特殊化了统计最小值

### CNN Component

[activation](./DeepLearningCNNComponent/activation.m): 实现三种常用的激活函数

- Sigmoid
- tanh
- ELo

[convolution](.DeepLearningCNNComponent/convolution.m): 实现卷积层操作，带有激活函数

[imgScale](.DeepLearningCNNComponent/imgScale.m): 裁剪图片

[imageArray](./DeepLearningCNNComponent/imageArray.m): 将图片数据转化为数组

[pooling](./DeepLearningCNNComponent/pooling.m): 实现池化层

- mean
- max

[fullyConnected](./DeepLearningCNNComponent/fullyConnected.m): 实现全连接层，带有激活函数

## 非监督性-聚类

### 数据集说明

这里有需要的数据集。

bballPlayer.txt: 篮球运动员的信息，包括位置、身高、体重等。

bballStat.txt: 篮球运动员每年的技术数据，包括参加比赛、得分、篮板球等。

### Low Dimensional Analysis：低维分析

[Classical Multi-dimensional Scaling](./LowDimAnalysis/ClassicalMultidimensionalScaling.m)：

- 首先计算距离对（欧氏距离）
- 根据距离对计算多维的特征值，根据特征值 e 来确定低维近似值是否合理
- 画图分析：如果前p个特征值明显大于其余的，则可以通过这p个维度很好地近似（降维）

[Principal Component Analysis](./LowDimAnalysis/PrincipalComponentAnalysis.m):

- 一个pca函数解决问题
- 结果的第一个参数是主成分坐标轴，第二个是对应新坐标

### K-means Clustering：聚类

[K-means Clustering](./KMeansClustering/Kmeans.m)

- kmeans函数解决问题，可以手动设置开始中心，和随机化次数
- 默认欧氏距离，可以尝试更换为相关性或者余弦距离

### Gaussian Mixture Models

[GMM](./GaussianMixtureModels/GMM.m)

- 拟合高斯混合模型：按照聚类数量需求，拟合n个多维高斯（正态）分布-GMM
- 确定聚类目标：将数据按照GMM概率结果聚类

### Hierarchical Clustering

[Hierarchical](./HierarchicalClustering/Hierarchical.m)

- 确定分层结构：定义聚类距离方式和距离准则
- 划分层次树为类别：根据层次图确定最大聚类数量

### Clustering Projects

[Wine Color](./ClusteringProj/Wine_color.m)

通过对12种属性的分析，判断葡萄酒的颜色

- PCA降维分析

- k-means聚类

- GMM聚类

- 对比聚类效果

[Corporate Bonds](./ClusteringProj/Corporate_Bonds.m)

- k-means聚类： cosine distance

- 评估最优聚类目标： silhouette

- 执行k-means最优聚类

[Wheat_Seed_Kernels](./ClusteringProj/Wheat_Seed_Kernels.m)

- k-means聚类

- GMM聚类

- 分层结构聚类

- 比较以上三种聚类效果（可视化方法）

- 混淆矩阵函数

- 散点标记函数

## 监督性-分类

#### 数据集说明

Triplex Pump Dataset：数据集为石油和天然气行业常用的三缸泵的故障分类数据。数据维度为1000 $\times$ 85，包含6组观测信号与一个故障码变量。其中对于6 个信号中的每一个都包含 14 个测量值，总共 84 个测量值构成了预测变量。故障码变量 FailureCode 由这三种故障类型的组合组成：BearingFault，BlockingFault，LeakingFault。

### 分类任务的学习流程

[Workflow](./ClassificationWorkflow/workflow.m)
