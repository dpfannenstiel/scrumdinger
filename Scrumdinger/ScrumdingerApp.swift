//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Dustin Pfannenstiel on 12/18/20.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
