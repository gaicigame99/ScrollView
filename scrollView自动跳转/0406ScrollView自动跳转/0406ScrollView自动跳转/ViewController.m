//
//  ViewController.m
//  0406ScrollView自动跳转
//
//  Created by Lancelot on 16/4/6.
//  Copyright © 2016年 tedu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIScrollView *scrollView;
    CGRect rect;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self shoudongScrollView];
    
    [self autoScrollView];
}
-(void)autoScrollView
{
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(autoMove) userInfo:nil repeats:YES];
}
-(void)autoMove
{
    static int flag;
    
    if (flag>3) {
        flag=0;
    }
    CGRect rect1 = CGRectMake(rect.size.width*flag, rect.origin.y, rect.size.width, rect.size.height);
    [scrollView scrollRectToVisible:rect1 animated:NO];
    flag ++;
}
-(void)shoudongScrollView
{
     rect = [[UIScreen mainScreen] bounds];
    
    //初始化一个滚动视图
     scrollView = [[UIScrollView alloc]
                                initWithFrame:[[UIScreen mainScreen] bounds]];
    
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
