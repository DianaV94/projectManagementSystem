//
//  TableEntriesList.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import SwiftUI

struct EmployeesTableEntriesList: View {
    @ObservedObject var store: EmployeesDataStore = EmployeesDataStore()
    @State var selectedEmployee: Int? = 2
    
    let title: String
    
    var body: some View {
        switch store.employees {
        case .loading:
            ProgressView()
        case let .loaded(employees):
            List(selection: $selectedEmployee) {
                ForEach(employees,
                        id: \.id) { employee in
                    NavigationLink(destination: EmployeeDetails(id: employee.id, onDelete: {
                        store.deleteEmployee(forId: employee.id)
                    })) {
                    Text(employee.name).font(.headline)
                    }
                }
            }
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
