//
//  LLuButtonLayout.m
//  UIButton图文Layout
//
//  Created by ma c on 16/1/22.
//  Copyright © 2016年 lu. All rights reserved.
//

#import "LLuButtonLayout.h"

/**
 *  图文所占比例
 */

#pragma mark 图片所占比例
/**
 *  图上字下Layout时，图片比例0.64f
 *  左右Layout时，图片比例0.42f
 *  图下自上，图片比例0.48f
 */
static CGFloat kImageScale = 0.48f;

@implementation LLuButtonLayout

-(instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        /**
         *  设置文字字体大小
         */
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        /**
         *  设置文字居中
         */
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        /**
         *  调整图片
         */
        self.imageView.contentMode = UIViewContentModeCenter;
        
    }
    return self;
}

#pragma mark -
#pragma mark - imageRectForContentRect:

-(CGRect)imageRectForContentRect:(CGRect)contentRect {
    
#pragma mark - 图片居上，文字居下
    
    CGFloat pointX = 0;
    CGFloat pointY = 0;
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height * kImageScale;
    
    
#pragma mark - 图片居左，文字居右
/*
    CGFloat pointX = 0;
    CGFloat pointY = 0;
    CGFloat width = contentRect.size.width * kImageScale;
    CGFloat height = contentRect.size.height;
*/
    
#pragma mark - 图片居下，文字居上
/*
    CGFloat pointX = 0;
    CGFloat pointY = contentRect.size.height * kImageScale;
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height * kImageScale;
*/
    
#pragma mark - 图片居右，文字居左
/*
    CGFloat pointX = contentRect.size.width * (1 - kImageScale);
    CGFloat pointY = 0;
    CGFloat width = contentRect.size.width * kImageScale;
    CGFloat height = contentRect.size.height;
*/
    return CGRectMake(pointX, pointY, width, height);
}

#pragma mark -
#pragma mark - titleRectForContentRect:
-(CGRect)titleRectForContentRect:(CGRect)contentRect {
    

#pragma mark - 图片居上，文字居下

    CGFloat pointX = 0;
    CGFloat pointY = contentRect.size.height * kImageScale;
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height * (1 - kImageScale);


#pragma mark - 图片居左，文字居右
/*
    CGFloat pointX = contentRect.size.height * kImageScale;
    CGFloat pointY = 0;
    CGFloat width = contentRect.size.width * (1 - kImageScale);
    CGFloat height = contentRect.size.height;
*/
    

#pragma mark - 图片居下，文字居上
/*
    CGFloat pointX = 0;
    CGFloat pointY = 0;
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height * (1 - kImageScale);
*/

#pragma mark - 图片居右，文字居左
/*
    CGFloat pointX = 0;
    CGFloat pointY = 0;
    CGFloat width = contentRect.size.width * (1 - kImageScale);
    CGFloat height = contentRect.size.height;
*/
    return CGRectMake(pointX, pointY, width, height);
}

@end
