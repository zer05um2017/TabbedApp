//
//  IntroViewController.m
//  TabbedApp
//
//  Created by user on 2019/10/17.
//  Copyright © 2019 Jaehu Jeon. All rights reserved.
//

#import "IntroViewController.h"
#import "TabViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(showTabBarView:) userInfo:nil repeats:NO];
}

- (void)viewWillAppear:(BOOL)animated {
    // Called when the view is about to made visible. Default does nothing
}
- (void)viewDidAppear:(BOOL)animated {
    // Called when the view has been fully transitioned onto the screen. Default does nothing
}

- (void)showTabBarView:(NSTimer *)timer {
    TabViewController *tabbar = [[TabViewController alloc]init];
    ViewController1 *vc1 = [[ViewController1 alloc]init];
    ViewController2 *vc2 = [[ViewController2 alloc]init];
    [vc1.tabBarItem setTitle:@"tab1"];
    [vc2.tabBarItem setTitle:@"tab2"];

    [tabbar setViewControllers:[NSArray arrayWithObjects:vc1, vc2, nil]];
    [self.navigationController pushViewController:tabbar animated:YES];
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = tabbar;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
