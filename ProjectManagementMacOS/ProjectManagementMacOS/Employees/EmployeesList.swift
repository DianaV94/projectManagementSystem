//
//  TableEntriesList.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import SwiftUI

struct EmployeesList: View {
    @ObservedObject var store: EmployeesDataStore = EmployeesDataStore()
    
    var body: some View {
        switch store.employees {
        case .loading:
            ProgressView()
        case let .loaded(employees):
//            VStack {
//                NavigationLink(destination: AddClient(clientDataStore: store, client: AddClientData())) {
//                    Text("Add Employee")
//                }
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
//            }
        default:
            Text("Loading failed")
        }
    }
}

//struct TableEntriesList_Previews: PreviewProvider {
//    static var previews: some View {
//        TableEntriesList(title: "Name")
//    }
//}
