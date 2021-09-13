# Machine Learning with MATLAB

​	使用Matlab实现机器学习算法，包括常用模型算法和官方提供的机器学习工具箱。

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

