//
//  Sidebar.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import SwiftUI

enum Table: CaseIterable {
    case projects
    case clients
    case employees
    case roles
    
    var menuName: String {
        switch self {
        case .projects:
            return "Projects"
        case .clients:
            return "Clients"
        case .employees:
            return "Employees"
        case .roles:
            return "Roles"
        }
    }
}

struct Sidebar: View {
    @Binding var selectedtable: Table?

    var body: some View {
        List(selection: $selectedtable) {
            ForEach(Table.allCases,
                    id: \.self) { table in
                switch table {
                case .projects, .roles:
                    NavigationLink(
                        destination: Text("Work in progress")
                    ) {
                        Text(table.menuName).font(.headline)
                    }
                case .clients:
                    NavigationLink(
                        destination: ClientsList()
                    ) {
                        Text(table.menuName).font(.headline)
                    }
                case .employees:
                    NavigationLink(
                        destination: EmployeesList()
                    ) {
                        Text(table.menuName).font(.headline)
                    }
                }
            }
        }.listStyle(SidebarListStyle())
    }
}
