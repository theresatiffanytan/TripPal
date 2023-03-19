//
//  TripPalApp.swift
//  TripPal
//
//  Created by Theresa Tiffany on 19/03/23.
//
// hai
import SwiftUI

@main
struct TripPalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
