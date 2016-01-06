//
//  MCRedViewController.m
//  MCTransitions
//
//  Created by MrChens on 15/12/29.
//  Copyright © 2015年 wangsu. All rights reserved.
//

#import "MCRedViewController.h"
#import "MCYellowViewController.h"
@interface MCRedViewController ()

@end

@implementation MCRedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake( (kScreenWidth - 40)/2, (kScreenHeight - 40)/2, 40, 40)];
    btn.titleLabel.text = @"push red";
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(onPushRedButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - ViewLifeCycle
#pragma mark - ViewInit
#pragma mark - ViewUpdate
#pragma mark - AppleDelegate
#pragma mark - AppleDataSource
#pragma mark - CustomDelegate
#pragma mark - CustomDataSource
#pragma mark - Target-Action Event
- (void)onPushRedButton:(UIButton *)sender {
    MCYellowViewController *yellowViewController = [[MCYellowViewController alloc] init];
    yellowViewController.title = @"yellowView";
    [self.navigationController pushViewController:yellowViewController animated:YES];
}
#pragma mark - PublicMethod
#pragma mark - PrivateMethod

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
