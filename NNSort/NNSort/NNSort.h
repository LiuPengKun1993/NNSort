//
//  NNSort.h
//  NNSort
//
//  Created by 刘朋坤 on 17/3/25.
//  Copyright © 2017年 刘朋坤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NNSort : NSObject
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

@end
