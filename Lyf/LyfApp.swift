//
//  LyfApp.swift
//  Lyf
//
//  Created by paaaulo santos on 20/09/25.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct LyfApp: App {
    // Adiciona o AppDelegate sem mudar nada do body
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    // Mantém seu body exatamente como está
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

