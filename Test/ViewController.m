//
//  ViewController.m
//  Test
//
//  Created by wangxuefeng on 2017/5/3.
//  Copyright © 2017年 wangxuefeng. All rights reserved.
//

#import "ViewController.h"
#import <UIImage+WebP.h>
#import <UIImageView+WebCache.h>

@interface ViewController ()

@property (strong, nonatomic) UILabel *nameLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    
    
    [self.view addSubview:imageView];
    
    NSLog(@"begin");
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"webp"];
    
    UIImage *image = [UIImage sd_imageWithWebPData:[NSData dataWithContentsOfFile:filePath]];

    NSLog(@"%f",image.duration);
    
    imageView.image = image;
    NSLog(@"end");
}

@end
