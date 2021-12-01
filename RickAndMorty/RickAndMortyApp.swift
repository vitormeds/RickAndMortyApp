//
//  RickAndMortyApp.swift
//  RickAndMorty
//
//  Created by Vitor Mendes de Souza on 30/11/21.
//

import SwiftUI

@main
struct RickAndMortyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
