//
//  DatingApp.swift
//  Dating
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import SwiftUI

@main
struct DatingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
