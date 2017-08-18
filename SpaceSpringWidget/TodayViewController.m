//
//  TodayViewController.m
//  SpaceSpringWidget
//
//  Created by Vincent Desmurs on 16/03/2017.
//  Copyright © 2017 Vincent Desmurs. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>
#ifndef APP_EXTENSION // if it's not defined
// Do your calls to UIApplication
#endif


@interface TodayViewController () <NCWidgetProviding> {
    NSUserDefaults *defaults;
}

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

- (IBAction)respringwidget:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"spacespring://"];
    [self.extensionContext openURL:url completionHandler:nil];
}

@end
