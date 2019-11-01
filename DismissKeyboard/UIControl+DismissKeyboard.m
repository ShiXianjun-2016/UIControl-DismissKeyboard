//
//  UIControl+DismissKeyboard.m
//  DHProject-welink
//
//  Created by 石显军 on 2019/11/1.
//  Copyright © 2019 dhyt. All rights reserved.
//

#import "UIControl+DismissKeyboard.h"
#import <objc/runtime.h>

@implementation UIControl (DismissKeyboard)

- (void)dkDismissKeyboard:(id)sender
{
    NSLog(@"aaa");
    if (self.endEditingWhenAction) {
        [[self dkTopSuperView:self] endEditing:YES];
    }
}

- (UIView *)dkTopSuperView:(UIView *)view
{
    if (view.superview == nil) {
        return view;
    }else{
        return [self dkTopSuperView:view.superview];
    }
}


#pragma mark - setter & getter

static NSString *endEditingWhenActionKey = @"endEditingWhenActionKey";

- (void)setEndEditingWhenAction:(BOOL)endEditingWhenAction
{
    if (endEditingWhenAction) {
        [self addTarget:self action:@selector(dkDismissKeyboard:) forControlEvents:UIControlEventTouchUpInside];
    }
    objc_setAssociatedObject(self, &endEditingWhenActionKey, @(endEditingWhenAction), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)endEditingWhenAction
{
    return [objc_getAssociatedObject(self, &endEditingWhenActionKey) boolValue];
}

@end
