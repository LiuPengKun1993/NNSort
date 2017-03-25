//
//  ViewController.m
//  NNSort
//
//  Created by 刘朋坤 on 17/3/25.
//  Copyright © 2017年 刘朋坤. All rights reserved.
//

#import "ViewController.h"
#import "NNSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:@"1", @"3", @"2", @"5", @"6", @"23", @"33", @"21", @"58", @"6.5", @"12", @"33", @"2.4", @"50", @"6.1", @"23.4", @"33.3", @"21.1", @"51", @"61", nil];
    
    // 冒泡排序
    [NNSort bubbleSort:mutableArray];
    // 直接插入排序
//    [NNSort insertSort:mutableArray];
    // 选择排序
//    [NNSort chooseSort:mutableArray];
    // 折半插入排序
//    [NNSort binaryInsertSort:mutableArray];
    // 希尔排序
//    [NNSort shellSort:mutableArray];
}

@end
