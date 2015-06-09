//
//  DUBaseView.m
//  03-空间不支持与用户交互的情况
//
//  Created by dulinlong on 15/5/14.
//  Copyright (c) 2015年 dulinlong. All rights reserved.
//

#import "DUBaseView.h"

@implementation DUBaseView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"begin: %@   %s",self.class ,__func__);
    [super touchesBegan:touches withEvent:event];
    NSLog(@"end: %@   %s",self.class ,__func__);

}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesMoved:touches withEvent:event];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    NSLog(@"begin: %@ %s",self.class,__func__);
     UIView * v =[super hitTest:point withEvent:event];
    NSLog(@"end: %@ %s",self.class,__func__);
    NSLog(@"return: %@",v.class);
    
    return v;

}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    
    NSLog(@"begin: %@ %s",self.class,__func__);
    BOOL v =[super pointInside:point withEvent:event];
    NSLog(@"end: %@ %s",self.class,__func__);
    NSLog(@"return:%d",v);
    return v;

   
}
@end
