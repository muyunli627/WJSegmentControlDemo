//
//  ViewController.m
//  WJSegmentControlDemo
//
//  Created by wujing on 16/5/19.
//  Copyright © 2016年 wujing. All rights reserved.
//

#import "ViewController.h"
#import "WJSegmentControl.h"
@interface ViewController ()
{
    UIView *view;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUISegmentedControl];
    }
- (void)createUISegmentedControl{
    view=[[UIView alloc]initWithFrame:CGRectMake(0, 88, self.view.bounds.size.width, self.view.bounds.size.height-44)];
    view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"1"]];

    [self.view addSubview:view];
    
     NSArray * btnNumbers = @[@"倾城雪", @"绝色坊", @"魅倾城", @"嫁无归"];
    WJSegmentControl *segmentCtrl=[WJSegmentControl segmentControlFrame:CGRectMake( 0, 44, self.view.bounds.size.width, 44) btnNumbers:btnNumbers backgroundColor:[UIColor cyanColor] titleColor:[UIColor whiteColor] titleFont:[UIFont systemFontOfSize:16.0f] selectedColor:[UIColor purpleColor] buttonDownColor:[UIColor redColor] delegate:self];
        [self.view addSubview:segmentCtrl];
    
    
    
}

#pragma mark -- 遵守代理 实现代理方法
- (void)segumentIndexChange:(NSInteger)segumentNumbers{

      if (segumentNumbers == 0) {
        NSLog(@"倾城雪");
      
        view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"1"]];
    }else if (segumentNumbers == 1){
        NSLog(@"绝色坊");
         view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"2"]];
    }else if (segumentNumbers==2){
        NSLog(@"魅倾城");
         view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"3"]];
    }
    else{
        NSLog(@"嫁无归");
         view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"4"]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
