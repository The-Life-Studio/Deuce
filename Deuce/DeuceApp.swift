//
//  DeuceApp.swift
//  Deuce
//
//  Created by Kush Mirchandani on 7/17/23.
//

import SwiftUI

@main
struct DeuceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
