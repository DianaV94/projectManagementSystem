//
//  TableEntriesList.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import SwiftUI

struct EmployeesList: View {
    @ObservedObject var store: EmployeesDataStore = EmployeesDataStore.instance
    
    var body: some View {
        switch store.employees {
        case .loading:
            ProgressView()
        case let .loaded(employees):
            VStack {
                NavigationLink(destination: AddEmployee(store: store, employee: AddEmployeeData())) {
                    Text("Add Employee")
                }
                List() {
                    ForEach(employees,
                            id: \.id) { employee in
                        NavigationLink(destination: EmployeeDetails(id: employee.id, store: store).onAppear {
                            store.loadEmployee(id: employee.id)
                        }) {
                            Text(employee.name).font(.headline)
                        }
                            }
                }
            }
        default:
            Text("Loading failed")
        }
    }
}
