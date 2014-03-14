//
//  MainViewController.h
//  LXActionSheetDemo
//
//  Created by lixiang on 14-3-10.
//  Copyright (c) 2014年 lcolco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LXActionSheet.h"

@interface MainViewController : UIViewController <LXActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UIButton *signOutButton;
@property (weak, nonatomic) IBOutlet UIButton *otherButton;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end
