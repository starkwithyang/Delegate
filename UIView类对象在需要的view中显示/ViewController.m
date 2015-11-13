//
//  ViewController.m
//  UIView类对象在需要的view中显示
//
//  Created by FQQ on 15/11/9.
//  Copyright © 2015年 FQQ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Myview *myview =[Myview createSubviewWithInView:self.view];
    myview.delegate =self;//这个类对象可以调用自己类的代理属性，从而当点击按钮视图时可以调用代理的方法
    
}
-(void)clickbutton{
    NSLog(@"sfsfsdfsfsf");
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
