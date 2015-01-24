//
//  CRViewController.m
//  CanRemind
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)remindMeInTen:(id)sender {
    
    NSDate *notificationDate = [[NSDate date]  dateByAddingTimeInterval:10];
    
    UILocalNotification *notification = [UILocalNotification new];
    if (notification) {
        notification.fireDate = notificationDate;
        notification.timeZone = [NSTimeZone defaultTimeZone];
        notification.alertBody = @"This is a local notification";
        notification.soundName = @"bell_tree.mp3";
        notification.repeatInterval = 0;
        notification.applicationIconBadgeNumber = 1;
        
        [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    }
    
}
- (IBAction)logInFiveSeconds:(id)sender {
    
    NSDate *notDate = [[NSDate date] dateByAddingTimeInterval:5];
    
    NSDictionary *dic = @{@"type":@"log message"};
    
    UILocalNotification *notificationTwo = [UILocalNotification new];
    if (notificationTwo) {
        notificationTwo.fireDate = notDate;
        notificationTwo.timeZone = [NSTimeZone defaultTimeZone];
        notificationTwo.repeatInterval = 0;
        notificationTwo.alertBody = @"2nd notification";
        notificationTwo.applicationIconBadgeNumber = 1;
        notificationTwo.userInfo = dic;
        
        [[UIApplication sharedApplication] scheduleLocalNotification:notificationTwo];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
