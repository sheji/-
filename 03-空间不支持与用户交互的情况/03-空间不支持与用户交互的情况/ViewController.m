//
//  ViewController.m
//  03-空间不支持与用户交互的情况
//
//  Created by dulinlong on 15/5/14.
//  Copyright (c) 2015年 dulinlong. All rights reserved.
//

#import "ViewController.h"
#import "DUButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    DUButton *btn = [[DUButton alloc]initWithFrame:CGRectMake(10, 10, 40, 40)];
    btn.backgroundColor = [UIColor redColor];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addSubview:btn];
    self.imageView.userInteractionEnabled = YES;//要开启用户交互,添加到imageView中的button才能点击,默认UIImageView的用户交互是关闭的
}
-(void)btnClick{
    NSLog(@"点了imageview中的自定义button按钮");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"begin: %@   %s",self.class ,__func__);
    [super touchesBegan:touches withEvent:event];
    NSLog(@"end: %@   %s",self.class ,__func__);

}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
//    NSLog(@"%@",self.class);
    [super touchesMoved:touches withEvent:event];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
//    NSLog(@"%@",self.class);
    [super touchesEnded:touches withEvent:event];
}

@end
