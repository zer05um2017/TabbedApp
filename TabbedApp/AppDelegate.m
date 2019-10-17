//
//  AppDelegate.m
//  TabbedApp
//
//  Created by user on 2019/10/16.
//  Copyright © 2019 Jaehu Jeon. All rights reserved.
//

#import "AppDelegate.h"
#import "TabViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "IntroViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    IntroViewController *introView = [[IntroViewController alloc]initWithNibName:@"IntroViewController" bundle:nil];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = introView;
    return YES;
}

@end
