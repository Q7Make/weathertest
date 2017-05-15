//
//  ViewController.m
//  alertView
//
//  Created by ZhangQian on 16/4/26.
//  Copyright © 2016年 ZhangQian. All rights reserved.
//

#import "ViewController.h"
#import "VC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.backgroundColor = [UIColor redColor];
    btn1.frame = CGRectMake(60, 60, 50, 50);
    [btn1 setTitle:@"push" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
}

- (void)push {
    [self.navigationController pushViewController:[[VC alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
