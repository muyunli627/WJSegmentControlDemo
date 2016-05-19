//
//  WJSegmentControl.h
//  WJSegmentControlDemo
//
//  Created by wujing on 16/5/19.
//  Copyright © 2016年 wujing. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WJSegmentControlDelegate <NSObject>

@optional
-(void)segumentIndexChange:(NSInteger)index;

@end
@interface WJSegmentControl : UIView
@property(nonatomic,strong)id <WJSegmentControlDelegate>delegate;

@property(nonatomic,strong)NSMutableArray *btnNumbers;
@property(nonatomic,strong)UIColor *titleColor;
@property (nonatomic,strong) UIColor * selectedColor;
@property (nonatomic,strong) UIFont * titleFont;
@property (nonatomic, strong) UIColor * buttonDownColor;

+(WJSegmentControl*)segmentControlFrame:(CGRect)frame
                             btnNumbers:(NSArray*)btnNumbers
                        backgroundColor:(UIColor*)backgroundColor
                             titleColor:(UIColor*)titleColor
                              titleFont:(UIFont*)titleFont
                          selectedColor:(UIColor*)selectedColor
                        buttonDownColor:(UIColor*)buttonDownColor
                               delegate:(id)delegate;


@end
