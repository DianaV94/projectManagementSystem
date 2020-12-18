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
        WindowGroup { () -> ContentView in
            Network.shared.apollo.fetch(query: EmployeesQuery()) { result in
              switch result {
              case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
              case .failure(let error):
                print("Failure! Error: \(error)")
              }
            }
            return ContentView()
        }
    }
}
