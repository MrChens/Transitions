//
//  BouncePresentAnimation.m
//  MCTransitions
//
//  Created by MrChens on 15/12/29.
//  Copyright © 2015年 wangsu. All rights reserved.
//

#import "BouncePresentAnimation.h"

@implementation BouncePresentAnimation

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    // get controllers from transition context
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    // set init frame for toVC
//    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGRect initialFrame = [transitionContext initialFrameForViewController:fromVC];
    CGRect finalFrame = [transitionContext finalFrameForViewController: toVC];
    
    fromVC.view.frame = initialFrame;
    toVC.view.frame = CGRectOffset(finalFrame, -kScreenWidth, 0);
    
    // add toVC's view to containerView
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    // do animate now
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0.0
         usingSpringWithDamping:1
          initialSpringVelocity:0.0
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         toVC.view.frame = finalFrame;
                         fromVC.view.frame = CGRectOffset(initialFrame, +kScreenWidth, 0);
                     } completion:^(BOOL finished) {
                         // tell context that we completed.
                         [transitionContext completeTransition:YES];
                     }];
    
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.8f;
}

@end
