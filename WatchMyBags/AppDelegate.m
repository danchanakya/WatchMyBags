//
//  AppDelegate.m
//  WatchMyBags
//
//  Created by Dantha Manikka-Baduge on 8/23/14.
//  Copyright (c) 2014 Dantha Manikka-Baduge. All rights reserved.
//

#import "AppDelegate.h"

#import <FYX/FYX.h>
#import <FYX/FYXLogging.h>


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [FYX setAppId:@"6153b621fea9b7e1afce0f188424ec84df859f440a3f17277548d5f250c68208"
        appSecret:@"fc4ba7ef1d6eaf7b5b5683f65e6fa431649db8287f264d74840b109c67607bf4"
      callbackUrl:@"watchmybags://authcode"];
    NSLog(@"start");
    [FYXLogging setLogLevel:FYX_LOG_LEVEL_INFO];

    return YES;
}

- (void)registerInitialValuesForUserDefaults {
    /*
    // Get the path of the settings bundle (Settings.bundle)
    NSString *settingsBundlePath = [[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"bundle"];
    if (!settingsBundlePath) {
        NSLog(@"ERROR: Unable to locate Settings.bundle within the application bundle!");
        return;
    }
    
    // Get the path of the settings plist (Root.plist) within the settings bundle
    NSString *settingsPlistPath = [[NSBundle bundleWithPath:settingsBundlePath] pathForResource:@"Root" ofType:@"plist"];
    if (!settingsPlistPath) {
        NSLog(@"ERROR: Unable to locate Root.plist within Settings.bundle!");
        return;
    }
    
    // Create a new dictionary to hold the default values to register
    NSMutableDictionary *defaultValuesToRegister = [NSMutableDictionary new];
    
    // Iterate over the preferences found in the settings plist
    NSArray *preferenceSpecifiers = [[NSDictionary dictionaryWithContentsOfFile:settingsPlistPath] objectForKey:@"PreferenceSpecifiers"];
    for (NSDictionary *preference in preferenceSpecifiers) {
        
        NSString *key = [preference objectForKey:@"Key"];
        id defaultValueObject = [preference objectForKey:@"DefaultValue"];
        
        if (key && defaultValueObject) {
            // If a default value was found, add it to the dictionary
            [defaultValuesToRegister setObject:defaultValueObject forKey:key];
        }
    }
    
    // Register the initial values in UserDefaults that were found in the settings bundle
    if (defaultValuesToRegister.count > 0) {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults registerDefaults:defaultValuesToRegister];
        [userDefaults synchronize];
    }
     */
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
