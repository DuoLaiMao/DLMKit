//
//  UIView+DLMFrame.h
//  DLMKit
//
//  Created by YangJian on 2016/10/12.
//

#import <UIKit/UIKit.h>

@interface UIView (DLMFrame)

@property (assign, nonatomic, setter=dlm_setX:) CGFloat dlm_x;

@property (assign, nonatomic, setter=dlm_setY:) CGFloat dlm_y;

@property (assign, nonatomic, setter=dlm_setWidth:) CGFloat dlm_width;

@property (assign, nonatomic, setter=dlm_setHeight:) CGFloat dlm_height;

@property (assign, nonatomic, setter=dlm_setRight:) CGFloat dlm_right;

@property (assign, nonatomic, setter=dlm_setBottom:) CGFloat dlm_bottom;

@property (assign, nonatomic, setter=dlm_setCenterX:) CGFloat dlm_centerX;

@property (assign, nonatomic, setter=dlm_setCenterY:) CGFloat dlm_centerY;

@property (assign, nonatomic, setter=dlm_setOrigin:) CGPoint dlm_origin;

@property (assign, nonatomic, setter=dlm_setSize:) CGSize dlm_size;

@end
