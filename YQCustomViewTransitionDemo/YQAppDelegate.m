//
//  YQAppDelegate.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 11/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQAppDelegate.h"
#import "YQMainUIViewController.h"

@implementation YQAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    YQMainUIViewController *mainViewController = [[YQMainUIViewController alloc] init];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    
    self.window.backgroundColor = [UIColor clearColor];
    [self.window makeKeyAndVisible];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{ NSFontAttributeName: [UIFont fontWithName:@"Avenir" size:20],
                                                            NSForegroundColorAttributeName: [UIColor blackColor]}];
    
    return YES;
}

@end
