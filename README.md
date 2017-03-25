# NNSort
### 几种排序算法的基本实现，OC 语言。

#### 我这里写成了类方法，大家导入项目直接调用即可。

```
#pragma mark - 冒泡排序
+ (void)bubbleSort:(NSMutableArray *)mutableArray;

#pragma mark - 直接插入排序
+ (void)insertSort:(NSMutableArray *)mutableArray;

#pragma mark - 选择排序
+ (void)chooseSort:(NSMutableArray *)mutableArray;

#pragma mark - 折半插入排序
+ (void)binaryInsertSort:(NSMutableArray *)mutableArray;

#pragma mark - 希尔排序
+ (void)shellSort:(NSMutableArray *)mutableArray;
```
