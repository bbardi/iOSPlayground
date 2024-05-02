//
//  BBardiPlaygroundApp.swift
//  BBardiPlayground
//
//  Created by Bogdan Bardi on 28.01.2024.
//

import SwiftUI
import UserNotifications

class AppDelegate: NSObject, UIApplicationDelegate {
    func registerForPushNotifications() {
        UNUserNotificationCenter.current()
            .requestAuthorization(options: [.alert]) { _, _ in
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        registerForPushNotifications()
        return true;
    }
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //let tokenParts = deviceToken.map { data in String(format: "%02.2hhx",data) }
        PushAPI().pushToken(deviceToken)
    }
}

@main
struct BBardiPlaygroundApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            MainMenu(entries: PlaygroundItem.entries)
        }
    }
}
