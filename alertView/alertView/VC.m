//
//  VC.m
//  alertView
//
//  Created by ZhangQian on 16/4/26.
//  Copyright © 2016年 ZhangQian. All rights reserved.
//

#import "VC.h"

@interface VC ()
{
    UIAlertView *alertV;
}
@end

@implementation VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.backgroundColor = [UIColor redColor];
    btn1.frame = CGRectMake(60, 60, 50, 50);
    [btn1 setTitle:@"show" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
}

- (void)show {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"aaa" message:@"看看" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    UIAlertView *alertViewShown = nil;
    
    for (UIWindow* window in [UIApplication sharedApplication].windows)
        
    {
        
        NSArray* subviews = window.subviews;
        
        if ([subviews count] > 0)
            
            if ([[subviews objectAtIndex:0] isKindOfClass:[UIAlertView class]])
                
                alertViewShown = [subviews objectAtIndex:0];
        
        NSLog(@"alertView appeard!!");
        
        [alertViewShown dismissWithClickedButtonIndex:0 animated:NO];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
