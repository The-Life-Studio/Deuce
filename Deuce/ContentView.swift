//
//  ContentView.swift
//  Deuce
//
//  Created by Kush Mirchandani on 7/17/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var isAuthenticated = false
    
    var body: some View {
            LoginView()
        
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
