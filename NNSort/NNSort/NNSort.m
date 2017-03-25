//
//  NNSort.m
//  NNSort
//
//  Created by 刘朋坤 on 17/3/25.
//  Copyright © 2017年 刘朋坤. All rights reserved.
//

#import "NNSort.h"

@implementation NNSort

#pragma mark - 冒泡排序
+ (void)bubbleSort:(NSMutableArray *)mutableArray {
    if(mutableArray == nil || mutableArray.count == 0)
        return;
    NSLog(@"冒泡排序之前: %@", mutableArray);
    for (NSInteger i = 0; i < mutableArray.count; i++) {
        for (NSInteger j = 0; j < mutableArray.count - i - 1; j++) {
            if ([mutableArray[j + 1] floatValue] < [mutableArray[j] floatValue]) {
                CGFloat tempFloat = [mutableArray[j] floatValue];
                mutableArray[j] = mutableArray[j + 1];
                mutableArray[j + 1] = [NSNumber numberWithFloat:tempFloat];
            }
        }
    }
    NSLog(@"冒泡排序之后: %@", mutableArray);
}

#pragma mark - 直接插入排序
+ (void)insertSort:(NSMutableArray *)mutableArray {
    if(mutableArray == nil || mutableArray.count == 0)
        return;
    NSLog(@"直接插入排序之前: %@", mutableArray);
    for (NSInteger i = 0; i < mutableArray.count; i++) {
        CGFloat tempFloat = [mutableArray[i] floatValue];
        for (NSInteger j = i - 1; j >= 0 && tempFloat < [mutableArray[j] floatValue]; j--) {
            mutableArray[j + 1] = mutableArray[j];
            mutableArray[j] = [NSNumber numberWithFloat:tempFloat];
        }
    }
    NSLog(@"直接插入排序之后: %@", mutableArray);
}

#pragma mark - 选择排序
+ (void)chooseSort:(NSMutableArray *)mutableArray {
    if(mutableArray == nil || mutableArray.count == 0)
        return;
    NSLog(@"选择排序之前: %@", mutableArray);
    for (NSInteger i = 0; i < mutableArray.count; i++) {
        for (NSInteger j = i + 1; j < mutableArray.count; j++) {
            if ([mutableArray[i] floatValue] > [mutableArray[j] floatValue]) {
                CGFloat tempFloat = [mutableArray[i] floatValue];
                mutableArray[i] = mutableArray[j];
                mutableArray[j] = [NSNumber numberWithFloat:tempFloat];
            }
        }
    }
    NSLog(@"选择排序之后: %@", mutableArray);
}

#pragma mark - 折半插入排序
+ (void)binaryInsertSort:(NSMutableArray *)mutableArray {
    if(mutableArray == nil || mutableArray.count == 0)
        return;
    NSLog(@"折半插入排序之前: %@", mutableArray);
    for(NSInteger i = 1 ; i < mutableArray.count ; i++) {
        CGFloat tempFloat = [[mutableArray objectAtIndex:i] floatValue];
        NSInteger left = 0;
        NSInteger right = i - 1;
        
        while (left <= right) {
            CGFloat middle = (left + right) / 2;
            
            if(tempFloat < [[mutableArray objectAtIndex:middle] floatValue]){
                right = middle - 1;
            } else {
                left = middle + 1;
            }
        }
        for(NSInteger j = i ; j > left; j--) {
            [mutableArray replaceObjectAtIndex:j withObject:[mutableArray objectAtIndex:j - 1]];
        }
        [mutableArray replaceObjectAtIndex:left withObject:[NSNumber numberWithFloat:tempFloat]];
    }
    NSLog(@"折半插入排序之后: %@", mutableArray);
}

#pragma mark - 希尔排序
+ (void)shellSort:(NSMutableArray *)mutableArray {
    if(mutableArray == nil || mutableArray.count == 0)
        return;
    NSLog(@"希尔排序之前: %@", mutableArray);
    NSInteger shellValue = mutableArray.count / 2;
    while (shellValue >= 1) {
        for(NSInteger i = shellValue; i < mutableArray.count; i++) {
            CGFloat tempFloat = [[mutableArray objectAtIndex:i] floatValue];
            NSInteger j = i;
            while (j >= shellValue && tempFloat < [[mutableArray objectAtIndex:(j - shellValue)] floatValue]) {
                [mutableArray replaceObjectAtIndex:j withObject:[mutableArray objectAtIndex:j - shellValue]];
                j -= shellValue;
            }
            [mutableArray replaceObjectAtIndex:j withObject:[NSNumber numberWithFloat:tempFloat]];
        }
        shellValue = shellValue / 2;
    }
    NSLog(@"希尔排序之后: %@", mutableArray);
}

@end
