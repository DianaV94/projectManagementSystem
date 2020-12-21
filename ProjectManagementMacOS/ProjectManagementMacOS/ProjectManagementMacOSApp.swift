//
//  ProjectManagementMacOSApp.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import SwiftUI

@main
struct ProjectManagementMacOSApp: App {
    var body: some Scene {
        WindowGroup {
            return ContentView(selectedTable: .projects)
        }
    }
}
