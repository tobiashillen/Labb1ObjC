//
//  ViewController.m
//  Labb1
//
//  Created by Tobias Hillén on 2017-01-10.
//  Copyright © 2017 Tobias Hillén. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    NSInteger bgColor = [pref integerForKey:@"BgColor"];
    if (bgColor == 1){
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    NSInteger bgColor = [pref integerForKey:@"BgColor"];
    if (bgColor == 1){
        self.view.backgroundColor = [UIColor whiteColor];
    } else {
        self.view.backgroundColor = [UIColor blackColor];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
