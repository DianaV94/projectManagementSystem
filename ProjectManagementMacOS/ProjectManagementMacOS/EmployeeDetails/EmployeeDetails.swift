//
//  AccountsView.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import SwiftUI
//import Apollo

struct EmployeeDetails: View {
    @ObservedObject var employeeDataStore: EmployeeDataStore
    @State var isRemoved: Bool = false
    
    var onDelete: () -> Void
    
    init(id: Int, onDelete: @escaping () -> Void) {
        self.employeeDataStore = EmployeeDataStore(id: id)
        self.onDelete = onDelete
    }
    
    var body: some View {
        if isRemoved {
            Text("Deleted")
        } else {
            switch employeeDataStore.state {
            case .loading:
                ProgressView()
            case let .loaded(employee):
                VStack(alignment: .leading) {
                    Text("First name: \(employee.firstName)")
                    Text("Last name: \(employee.lastName)")
                    Text("Code: \(employee.code)")
                    Text("Email: \(employee.email)")
                    Text("Role: \(employee.role)")
                    Button("Delete") {
                        onDelete()
                        isRemoved = true
                    }
                }.padding()
            default:
                Text("Loading failed")
            }
        }
    }
}

//struct AccountsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AccountsView()
//    }
//}
