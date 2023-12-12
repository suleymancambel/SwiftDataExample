//
//  SwiftDataExampleApp.swift
//  SwiftDataExample
//
//  Created by Süleyman Çambel on 12.12.2023.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataExampleApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView(text: "test")
        }
        .modelContainer(for: DataItem.self)
    }
}
