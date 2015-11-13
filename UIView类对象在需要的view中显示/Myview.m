//
//  Myview.m
//  UIView类对象在需要的view中显示
//
//  Created by FQQ on 15/11/9.
//  Copyright © 2015年 FQQ. All rights reserved.
//

#import "Myview.h"

@implementation Myview
+(Myview *)createSubviewWithInView:(UIView*)view{
  
    
    Myview *myview =[[Myview alloc]init];
      myview.backgroundColor =[UIColor grayColor];
    myview.frame =CGRectMake(0, 0, view.frame.size.width,view.frame.size.height);
    [view addSubview:myview];
    
    
    
    UIButton* mybutton =[[UIButton alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
    [mybutton addTarget:myview action:@selector(clickbutton:) forControlEvents:UIControlEventTouchUpInside];
    
    mybutton.backgroundColor =[UIColor redColor];
   // Myview.mybutton =mybutton;
   // myview.mybutton =mybutton;
    [myview addSubview:mybutton];
    
    return myview;
}

-(void)clickbutton:(UIButton*)sender{
   // NSLog(@"fdsffsf");UIView类方法可以传递视图，但不能传递方法，所以需要代理
    [self.delegate clickbutton];//我的协议属性  (可以调用我的方法)在类内调用
    
    
}
@end
