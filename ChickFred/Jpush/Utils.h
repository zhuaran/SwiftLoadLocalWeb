

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Utils : NSObject
/*  切换横竖屏 */
+ (void)forceOrientation: (UIInterfaceOrientation)orientation;
/* 判断是否横屏 */
+ (BOOL)isOrientationLandscape;
+ (BOOL)isDis;
+(void)replaceVC:(UIViewController*)targetVC;
@end
