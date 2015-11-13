//
//  Myview.h
//  UIView类对象在需要的view中显示
//
//  Created by FQQ on 15/11/9.
//  Copyright © 2015年 FQQ. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MyviewDelegate//协议
-(void)clickbutton;//协议方法
@end
@interface Myview : UIView
@property(nonatomic,weak)id<MyviewDelegate>delegate;//我拥有这个协议（属性）
+(Myview *)createSubviewWithInView:(UIView*)view;


@end
