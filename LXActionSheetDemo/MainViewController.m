//
//  MainViewController.m
//  LXActionSheetDemo
//
//  Created by lixiang on 14-3-10.
//  Copyright (c) 2014年 lcolco. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic,strong) LXActionSheet *actionSheet;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"LXActionSheetDemo";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.signOutButton.layer.masksToBounds = YES;
    self.signOutButton.layer.cornerRadius = 5.0;
    
    self.registerButton.layer.masksToBounds = YES;
    self.registerButton.layer.cornerRadius = 5.0;
    
    self.loginButton.layer.masksToBounds = YES;
    self.loginButton.layer.cornerRadius = 5.0;
    
    self.otherButton.layer.masksToBounds = YES;
    self.otherButton.layer.cornerRadius = 5.0;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClickOnSignOut:(id)sender{
    self.actionSheet = [[LXActionSheet alloc]initWithTitle:@"退出后不会删除任何历史数据,下次登录依然可以使用本账号" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"退出登录" otherButtonTitles:nil];
    [self.actionSheet showInView:self.view];
}

- (IBAction)didcilckOnRegisterButton:(id)sender {
    self.actionSheet = [[LXActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@[@"QQ注册",@"微博注册",@"微信注册"]];
    [self.actionSheet showInView:self.view];
}

- (IBAction)didClickOnLoginButton:(id)sender {
    self.actionSheet = [[LXActionSheet alloc]initWithTitle:@"选择登录方式" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@[@"QQ登录",@"微博登录",@"微信登录"]];
    [self.actionSheet showInView:self.view];
}

- (IBAction)didClickOnOtherButton:(id)sender {
    self.actionSheet = [[LXActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"删除" otherButtonTitles:@[@"手机",@"相册",@"其他",@"更多"]];
    [self.actionSheet showInView:self.view];
}

#pragma mark - LXActionSheetDelegate

- (void)didClickOnButtonIndex:(NSInteger *)buttonIndex
{
    NSLog(@"%d",(int)buttonIndex);
}

- (void)didClickOnDestructiveButton
{
    NSLog(@"destructuctive");
}

- (void)didClickOnCancelButton
{
    NSLog(@"cancelButton");
}

@end
