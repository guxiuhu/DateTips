//
//  AppDelegate.swift
//  DateTips
//
//  Created by 古秀湖 on 16/8/12.
//  Copyright © 2016年 南天. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let screenBounds = UIScreen.mainScreen().bounds;
        window = UIWindow.init(frame: screenBounds);
        window?.autoresizesSubviews = true;
        window?.rootViewController = UINavigationController.init(rootViewController: MainVCtrl.init());
        window?.makeKeyAndVisible();
        
        return true
    }
}

