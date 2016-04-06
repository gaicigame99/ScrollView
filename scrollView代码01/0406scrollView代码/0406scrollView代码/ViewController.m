//
//  ViewController.m
//  0406scrollView代码
//
//  Created by Lancelot on 16/4/6.
//  Copyright © 2016年 tedu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = [[UIScreen mainScreen] bounds];
    
    //初始化一个滚动视图
    UIScrollView *scrollView = [[UIScrollView alloc]
        initWithFrame:[[UIScreen mainScreen] bounds]];
    
//    UIImageView *imageview =[[UIImageView alloc]
//initWithImage:[UIImage imageNamed:@"shuiguo1.png"]];
                             
//UIImage *image1 = [UIImage imageNamed:@"shuiguo1.png"];
//UIImageView *imageview1 = [[UIImageView alloc]initWithFrame:rect];
//    imageview1.image =image1;
//    [scrollView addSubview:imageview1];
//
//UIImage *image2 = [UIImage imageNamed:@"shuiguo2.png"];
//UIImageView *imageview2 = [[UIImageView alloc]initWithFrame:
//CGRectMake(rect.size.width, rect.origin.y, rect.size.width, rect.size.height)];
//imageview2.image =image2;
//[scrollView addSubview:imageview2];
//    
//UIImage *image3 = [UIImage imageNamed:@"shuiguo3.png"];
//UIImageView *imageview3 = [[UIImageView alloc]initWithFrame:
//CGRectMake(rect.size.width*2, rect.origin.y, rect.size.width, rect.size.height)];
//    imageview3.image =image3;
//    [scrollView addSubview:imageview3];
    
    for (int i=0; i<3; i++) {
NSString *string = [NSString stringWithFormat:@"shuiguo%d.png",i+1];
UIImage *image1 = [UIImage imageNamed:string];
        CGRect newRect =
CGRectMake(rect.size.width*i, rect.origin.y, rect.size.width, rect.size.height);
UIImageView *imageview1 = [[UIImageView alloc]initWithFrame:newRect];
imageview1.image =image1;
[scrollView addSubview:imageview1];

    }
    
    
    scrollView.scrollEnabled = YES;
    CGSize size = CGSizeMake(rect.size.width*3, rect.size.height);
    scrollView.contentSize =size;
    scrollView.pagingEnabled = YES;
    
    
    [self.view addSubview:scrollView];
}














@end
