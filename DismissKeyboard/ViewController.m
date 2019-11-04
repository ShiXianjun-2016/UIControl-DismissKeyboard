//
//  ViewController.m
//  DismissKeyboard
//
//  Created by 石显军 on 2019/11/1.
//  Copyright © 2019 石显军. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+DismissKeyboard.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginButton.endEditingWhenAction = NO;
    self.loginButton.endEditingWhenAction = NO;
    self.loginButton.endEditingWhenAction = NO;
}


@end
