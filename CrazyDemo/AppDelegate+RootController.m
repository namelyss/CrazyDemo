//
//  AppDelegate+RootController.m
//  CrazyDemo
//
//  Created by Dazzle on 2018/9/14.
//  Copyright © 2018年 Dazzle. All rights reserved.
//

#import "AppDelegate+RootController.h"

@implementation AppDelegate (RootController)

- (void)sayHi {
    NSLog(@"RooController sayHi");
}

- (void)setAppWindow {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
}

- (void)setTabbarController {
    UIViewController *firstController = [[UIViewController alloc] init];
    UIViewController *secondController = [[UIViewController alloc] init];
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    [tabbarController setViewControllers:@[firstController,secondController]];
    self.controller = tabbarController;
}

- (void)setRootController {
    UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:(self.controller)];
    self.window.rootViewController = navc;
}

@end
