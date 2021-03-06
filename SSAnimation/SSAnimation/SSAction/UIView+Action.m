//
//  UIView+Action.m
//  SSAnimation
//
//  Created by vienta on 13-12-25.
//  Copyright (c) 2013年 Candy. All rights reserved.
//

#import "UIView+Action.h"
#import "SSActionManager.h"

@implementation UIView (Action)

- (id)runAction:(SSAction *)action
{
    NSAssert(action != nil, @"action can not be nil");
    [[SSActionManager sharedSSActionManager] addAction:action target:self];
    return action;
}

- (void)stopAllActions
{
    [[SSActionManager sharedSSActionManager] removeAllActionsFromTarget:self];
    [self.layer removeAllAnimations];
}

@end
