//
//  ViewController.m
//  MCTransitions
//
//  Created by MrChens on 15/12/29.
//  Copyright © 2015年 wangsu. All rights reserved.
//

#import "MCMainViewController.h"
#import "MCRedViewController.h"
@interface MCMainViewController ()
@end

@implementation MCMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake( (kScreenWidth - 40)/2, (kScreenHeight - 40)/2, 40, 40)];
    btn.titleLabel.text = @"push red";
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(onPushRedButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ViewLifeCycle
#pragma mark - ViewInit
#pragma mark - ViewUpdate
#pragma mark - AppleDelegate


//- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
//    return self.presentAnimation;
//}
#pragma mark - AppleDataSource
#pragma mark - CustomDelegate
#pragma mark - CustomDataSource
#pragma mark - Target-Action Event
- (void)onPushRedButton:(UIButton *)sender {
    MCRedViewController *redViewController = [[MCRedViewController alloc] init];
    redViewController.title = @"RedView";
//    redViewController.transitioningDelegate = self;
//    [self presentViewController:redViewController animated:YES completion:nil];
    [self.navigationController pushViewController:redViewController animated:YES];
}
#pragma mark - PublicMethod
#pragma mark - PrivateMethod


@end
