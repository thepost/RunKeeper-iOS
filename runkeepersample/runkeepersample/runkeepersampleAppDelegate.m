//
//  runkeepersampleAppDelegate.m
//  runkeepersample
//
//  Created by Reid van Melle on 11-09-16.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "runkeepersampleAppDelegate.h"
#import "RunKeeper.h"

#define kRunKeeperClientID @"055cac1c950b46e6ac7910d62800a854"
#define kRunKeeperClientSecret @"fecafee9ecfa43fab1dc25fb883066fb"

@implementation runkeepersampleAppDelegate


@synthesize window=_window;

@synthesize navigationController=_navigationController;

#pragma RunKeeper

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    
    [[RunKeeper sharedRunKeeper] handleOpenURL:url];
    return TRUE;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[RunKeeper sharedRunKeeper] setClientID:kRunKeeperClientID clientSecret:kRunKeeperClientSecret];
    [[RunKeeper sharedRunKeeper] tryToConnect:nil];
    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [super dealloc];
}

@end