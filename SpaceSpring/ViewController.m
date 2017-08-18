//
//  ViewController.m
//  SpaceSpring
//
//  Created by Vincent Desmurs on 15/03/2017.
//  Copyright © 2017 Vincent Desmurs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSUserDefaults *defaults;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _iosvers.text = [UIDevice currentDevice].systemVersion;
    
    defaults = [NSUserDefaults standardUserDefaults];
    UIUserNotificationType types = UIUserNotificationTypeBadge | UIUserNotificationTypeSound | UIUserNotificationTypeAlert;
    UIUserNotificationSettings *mySettings = [UIUserNotificationSettings settingsForTypes:types categories:nil];
    [[UIApplication sharedApplication] registerUserNotificationSettings:mySettings];
    
    NSLog(@">Name: %@", [UIDevice currentDevice].name);
    NSLog(@">iOS: %@", [UIDevice currentDevice].systemVersion);
    NSLog(@">Launch the bug");
    
    //1
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    
    NSTimeInterval  interval;
    interval = 5; //Time here in second to respring
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //2
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //3
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //4
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //5
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //6
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //7
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //8
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //9
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    //10
    [defaults setBool:YES forKey:@"notificationIsActive"];
    [defaults synchronize];
    interval = 5;
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:interval];
    localNotification.alertBody = _crashtext.text;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.repeatInterval = NSCalendarUnitYear;
    localNotification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    
    UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Your device will respring in few second, please wait..." message:nil delegate:self cancelButtonTitle:nil otherButtonTitles: nil];
    [alert2 show];
    
    NSLog(@">Hey XPC, are you here ?");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
