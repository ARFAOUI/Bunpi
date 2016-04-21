//
//  AppDelegate.swift
//  Bunpi
//
//  Created by Bechir Arfaoui on 15/04/16.
//  Copyright © 2016 Bechir Arfaoui. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var MainView: ViewController?
    var myNavigationController: UINavigationController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.MainView = ViewController()
        self.myNavigationController = UINavigationController(rootViewController: self.MainView!);
        self.myNavigationController?.navigationBar.translucent = false
        self.myNavigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        self.window?.rootViewController = self.myNavigationController
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
    }

    func applicationDidEnterBackground(application: UIApplication) {
    }

    func applicationWillEnterForeground(application: UIApplication) {
    }

    func applicationDidBecomeActive(application: UIApplication) {
    }

    func applicationWillTerminate(application: UIApplication) {
    }


}

