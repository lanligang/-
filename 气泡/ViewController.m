//
//  ViewController.m
//  气泡
//
//  Created by ios2 on 2018/9/29.
//  Copyright © 2018年 ios2. All rights reserved.
//

#import "ViewController.h"
#import "LgEmitterView.h"
#import "UIView+LG_Frame.h"
#import "WaveAnimationView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
	
	UIImageView * backgroundView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 300.0f)];
	backgroundView.contentMode = UIViewContentModeScaleAspectFill;
	backgroundView.image = [UIImage imageNamed:@"yugang"];
	backgroundView.clipsToBounds = YES;
	[self.view addSubview:backgroundView];
	LgEmitterView * emitterV = [[LgEmitterView alloc]initWithFrame:CGRectMake(0, backgroundView.height*0.1, backgroundView.width, backgroundView.height*0.9)];
	[self.view addSubview:emitterV];
	WaveAnimationView *waveView = [[WaveAnimationView alloc]initWithFrame:CGRectMake(0, 0, backgroundView.width, backgroundView.height)];
	[self.view addSubview:waveView];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
