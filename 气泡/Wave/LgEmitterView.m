//
//  LgEmitterView.m
//  2016.0405.am
//
//  Created by ios2 on 2018/9/29.
//  Copyright © 2018年 yanxinlong. All rights reserved.
//

#import "LgEmitterView.h"

@implementation LgEmitterView

-(instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self addFlowerEmitter];
		self.clipsToBounds = YES;
	}
	return self;
}

-(void)addFlowerEmitter
{
	CAEmitterLayer * snowEmitterLayer = [CAEmitterLayer layer];
		//设置出现的区域 emitter 发射器 emitter
	snowEmitterLayer.emitterPosition = CGPointMake(self.bounds.size.width/2.0f, self.bounds.size.height);
	snowEmitterLayer.emitterSize = CGSizeMake(self.bounds.size.width * 2, 0);
	snowEmitterLayer.emitterMode = kCAEmitterLayerOutline;
		//发射器的形状
	snowEmitterLayer.emitterShape = kCAEmitterLayerRectangle;
    [self.layer addSublayer:snowEmitterLayer];
	NSMutableArray *itemCells = [NSMutableArray array];

	for (int i = 0; i<2; i++) {
		CAEmitterCell * snowCell = [CAEmitterCell emitterCell];
		NSString *name = @"气泡";
		snowCell.contents = (__bridge id)[UIImage imageNamed:name].CGImage;
			// 缩放比例
		snowCell.scale =  - 0.15;
		snowCell.scaleRange = - 0.25;
			//上升的加速度
		snowCell.yAcceleration = -20.0f;
			// 每秒产生的数量
		snowCell.birthRate = 5;
			//留存时间
		snowCell.lifetime = 3.2;
			// 每秒花瓣变透明的速度
		snowCell.alphaSpeed = -0.15;
			// 秒速“五”厘米～～
			//这是初速度
		snowCell.velocity = 8;
		snowCell.velocityRange = 8;

			// 角度范围
		snowCell.emissionRange = 0;

			// 旋转的速度
		snowCell.spin = 0;

		[itemCells addObject:snowCell];
	}

	snowEmitterLayer.emitterCells = itemCells;
		// 阴影的 不透明 度
	snowEmitterLayer.shadowOpacity = 1;
		// 阴影化开的程度（就像墨水滴在宣纸上化开那样）
	snowEmitterLayer.shadowRadius = 8;
		// 阴影的偏移量
	snowEmitterLayer.shadowOffset = CGSizeMake(3, 3);
		// 阴影的颜色
	snowEmitterLayer.shadowColor = [[UIColor whiteColor] CGColor];

}







@end
