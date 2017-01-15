//
//  BackgroundController.m
//  Labb1
//
//  Created by Tobias Hillén on 2017-01-15.
//  Copyright © 2017 Tobias Hillén. All rights reserved.
//

#import "BackgroundController.h"

@interface BackgroundController ()

@end

@implementation BackgroundController

- (IBAction)whiteBgOption {
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    [pref setInteger:1 forKey:@"BgColor"];
    [pref synchronize];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)blackBgOption {
    NSUserDefaults *pref = [NSUserDefaults standardUserDefaults];
    [pref setInteger:2 forKey:@"BgColor"];
    [pref synchronize];
    self.view.backgroundColor = [UIColor blackColor];
}

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


@end
