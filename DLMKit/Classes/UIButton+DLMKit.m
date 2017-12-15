//
//  UIButton+DLMKit.m
//  DLMKit
//
//  Created by YangJian on 2016/10/12.
//

#import "UIButton+DLMKit.h"

@implementation UIButton (DLMKit)

- (void)makeCenterAlignWithSpace:(CGFloat)space
{
    // get the size of the elements here for readability
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    // lower the text and push it left to center it
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (imageSize.height + space/2), 0.0);
    
    // the text width might have changed (in case it was shortened before due to
    // lack of space and isn't anymore now), so we get the frame size again
    titleSize = self.titleLabel.frame.size;
    
    // raise the image and push it right to center it
    self.imageEdgeInsets = UIEdgeInsetsMake(- (titleSize.height + space/2), 0.0, 0.0, - titleSize.width);
}

- (void)makeRightAlignWithSpace:(CGFloat)space
{
    CGFloat imageWidth = CGRectGetWidth([self imageRectForContentRect:self.bounds]);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth - space/2, 0, imageWidth + space/2);
    CGFloat titleWidth = self.titleLabel.frame.size.width;
    //[self.titleLabel.text sizeWithFont:self.titleLabel.font].width;
    self.imageEdgeInsets = UIEdgeInsetsMake(0, titleWidth + space/2, 0, - titleWidth - space/2);
}

@end
