//
//  UIButton+DLMKit.h
//  DLMKit
//
//  Created by YangJian on 2016/10/12.
//

#import <UIKit/UIKit.h>

@interface UIButton (DLMKit)


/**
 图片在上，title在下的布局，需要在设置完图片和title后调用
 */
- (void)makeCenterAlignWithSpace:(CGFloat)space;

/**
 图片在右，title在左的布局，需要在设置完图片和title后调用
 */
- (void)makeRightAlignWithSpace:(CGFloat)space;

@end
