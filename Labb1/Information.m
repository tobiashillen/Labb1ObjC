//
//  Information.m
//  Labb1
//
//  Created by Tobias Hillén on 2017-01-15.
//  Copyright © 2017 Tobias Hillén. All rights reserved.
//


#import "Information.h"

@interface Information ()

@property (weak, nonatomic) IBOutlet UIView *textBg;

@end

@implementation Information

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    NSInteger bgColor = [pref integerForKey:@"BgColor"];
    if (bgColor == 1){
        self.view.backgroundColor = [UIColor whiteColor];
        self.textBg.backgroundColor = [UIColor whiteColor];
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
