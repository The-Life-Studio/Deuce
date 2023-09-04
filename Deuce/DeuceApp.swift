//
//  DeuceApp.swift
//  Deuce
//
//  Created by Kush Mirchandani on 7/17/23.
//
import Firebase
import FirebaseCore
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct DeuceApp: App {
    let persistenceController = PersistenceController.shared
    let tabBarColor = Color("#E4E4E3")
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    init() {
        // Set tab bar appearance
        UITabBar.appearance().backgroundColor = UIColor(tabBarColor)
        UITabBar.appearance().unselectedItemTintColor = .gray

      }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
