//
//  AppDelegate.swift
//  SwiftTutorial
//
//  Created by Mfluid Design on 17/06/15.
//  Copyright (c) 2015 Mfluid Design. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let tutorialInte=100
        let floatValue:String="neeraj"
        print(tutorialInte,floatValue)
        print("HEllo im here")
        
         let possibleTipsInferred = [0.15, 0.18, 0.20]
       var shoppingList=["pc","prasanth"]
        let valueAdding=20
        if shoppingList.isEmpty
        {
         print("\n no values")
        }
        else
        {
         print("\(valueAdding)  values present")
        }
        print(thisIsMyFirstMethod(20))
        for pssible in possibleTipsInferred
        {
           // print(pssible);
             let intPct = Int(pssible*100)
            print(intPct)
        }
        var cardSuits = Set(["Diamonds", "Spades","Hearts","Clubs"])
        print(cardSuits.count)
         //   var testingSet = Set(["pc","prasanth" ,"Risny" ,"Neeraj"])
//        var secondSet : Set = ["first" ,"Second" ,"Third"]
        //print(testingSet.count)
        
               // Override point for customization after application launch.
        
        var bundle : NSBundle = NSBundle.mainBundle()
       print(bundle.pathForResource("pc", ofType: "pdf"))
        return true
    }
    func thisIsMyFirstMethod(valuePassing :Float)->Float
    {
    print(valuePassing+10)
        return valuePassing+100
        
        
}
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

