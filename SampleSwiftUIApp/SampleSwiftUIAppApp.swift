//
//  SampleSwiftUIAppApp.swift
//  SampleSwiftUIApp
//
//  Created by Azizbek Ismailov on 04.10.2022.
//

import SwiftUI

@main
struct SampleSwiftUIAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
