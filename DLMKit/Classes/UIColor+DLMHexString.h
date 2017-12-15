//
//  UIColor+DLMHexString.h
//  DLMKit
//
//  Created by YangJian on 2016/10/12.
//

#import <UIKit/UIKit.h>

@interface UIColor (DLMHexString)

//color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
+ (UIColor *)colorWithHexString:(NSString *)color;

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
