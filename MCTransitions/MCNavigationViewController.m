//
//  MCMainNavigationViewController.m
//  MCTransitions
//
//  Created by MrChens on 15/12/29.
//  Copyright © 2015年 wangsu. All rights reserved.
//

#import "MCNavigationViewController.h"
#import "MCRedViewController.h"
#import "BouncePresentAnimation.h"

@interface MCNavigationViewController ()<UINavigationControllerDelegate>
@property (nonatomic, strong) BouncePresentAnimation *presentAnimation;

@end

@implementation MCNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _presentAnimation = [BouncePresentAnimation new];
    self.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    
    if (operation == UINavigationControllerOperationPush && [toVC isKindOfClass:[MCRedViewController class]]) {
        return self.presentAnimation;
    }
    return nil;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
