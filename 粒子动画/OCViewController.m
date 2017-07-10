//
//  OCViewController.m
//  粒子动画
//
//  Created by MrHuang on 17/7/10.
//  Copyright © 2017年 Mrhuang. All rights reserved.
//

#import "OCViewController.h"

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"-------");
//
//    CAEmitterLayer *layer = [CAEmitterLayer layer];
//    layer.emitterPosition = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height - 20);
//    layer.preservesDepth = YES;
//    layer.emitterSize = CGSizeMake(self.view.bounds.size.width * 2, 0);
//    layer.emitterMode = kCAEmitterLayerOutline;
//    layer.emitterShape = kCAEmitterLayerLine;
//    layer.renderMode = kCAEmitterLayerOldestLast;
//    layer.velocity = 10;
//    // 创建cell
//    CAEmitterCell *cell = [CAEmitterCell emitterCell];
//    
//    cell.velocity = 150;
//    cell.velocityRange = 100;
//    
//    cell.scale = 0.7;
//    cell.scaleRange = 0.3;
//
//    cell.lifetime = 6;
//    cell.lifetimeRange = 3;
//    
//    cell.emissionLongitude = -M_PI_2;
//    cell.emissionRange = (M_PI_2 / 6);
//    
//    cell.birthRate = 5;
//    cell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"good2_30x30_@3x"].CGImage);
//
//    cell.emitterCells = @[cell];
//    
//    [self.view.layer addSublayer:layer];
    
    
    
    CAEmitterLayer * layer = [CAEmitterLayer layer];
    //粒子发射位置
    layer.emitterPosition = CGPointMake(self.view.bounds.size.width * 0.5,self.view.bounds.size.height - 20);
    //发射源的尺寸大小
    layer.emitterSize = CGSizeMake(0, 10);
    //发射模式
    layer.emitterMode = kCAEmitterLayerLine;
    //发射源的形状
    layer.emitterShape = kCAEmitterLayerLine;
    //发射速度
    layer.velocity = 5;
    //渲染模式
    layer.renderMode = kCAEmitterLayerOldestLast;
    //创建粒子
    CAEmitterCell * cell = [CAEmitterCell emitterCell];
    //粒子的内容
    cell.contents = (__bridge id)[UIImage imageNamed:@"good2_30x30_@3x"].CGImage;
    // 缩放比例
    cell.scale = 0.7;
    cell.scaleRange = 0.2;
    // 每秒产生的数量
    cell.birthRate = 10;
    
    cell.lifetimeRange = 3;
    cell.lifetime = 6;
    // 每秒变透明的速度
    cell.alphaSpeed = -0.5;
    // Y方向加速
    cell.yAcceleration = 80;
    // 速度
    cell.velocity = 100;
    cell.velocityRange = 150;
    // 掉落的角度范围
    cell.emissionLongitude = -M_PI_4 /8;
    cell.emissionRange = -M_PI_4 /8;
   
    // 旋转的速度
//    cell.spin = M_PI_4;
    
    layer.emitterCells = @[cell];
    
    [self.view.layer addSublayer:layer];
    
}



@end
