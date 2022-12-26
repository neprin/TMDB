//
//  TMDBApp.swift
//  TMDB
//
//  Created by Pavel Neprin on 12/26/22.
//

import SwiftUI

@main
struct TMDBApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
