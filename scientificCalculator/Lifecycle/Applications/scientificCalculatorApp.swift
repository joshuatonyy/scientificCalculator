//
//  scientificCalculatorApp.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

@main
struct scientificCalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
