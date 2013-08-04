//
//  AppDelegate.m
//  FailedBanks
//
//  Created by Edward on 13-8-4.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] initWithNibName:nil bundle:nil]];
  self.window.rootViewController = navigationController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

@end
