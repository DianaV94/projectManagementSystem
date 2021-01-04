//
//  EmployeeDetails.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 29.12.2020.
//

import SwiftUI

struct EmployeeDetails: View {
    struct MissingClientError: Error {}
    
    @ObservedObject var store: EmployeesDataStore
    @State var isRemoved: Bool = false
    @State var isEditMode: Bool = false
    @State var editData: UpdateEmployeeData = UpdateEmployeeData()
    
    let id: Int
    
    init(id: Int,
         store: EmployeesDataStore) {
        self.id = id
        self.store = store
    }
    
    var body: some View {
        if isRemoved {
            Text("Deleted")
        }
        else if isEditMode {
            VStack(alignment: .leading) {
                Group {
                    Text("Employee code")
                        .font(.callout)
                        .bold()
                    TextField(store.currentEmployee.data!.code, text: $editData.code) .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Employee username")
                        .font(.callout)
                        .bold()
                    TextField(store.currentEmployee.data!.userName, text: $editData.userName) .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Employee first name")
                        .font(.callout)
                        .bold()
                    TextField(String(store.currentEmployee.data!.firstName), text: $editData.firstName) .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Employee last name")
                        .font(.callout)
                        .bold()
                    TextField(String(store.currentEmployee.data!.lastName), text: $editData.lastName) .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Employee email")
                        .font(.callout)
                        .bold()
                    TextField(store.currentEmployee.data!.email, text: $editData.email) .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Group {
                    Text("Employee role")
                        .font(.callout)
                        .bold()
                    Menu {
                        switch RolesDataStore.instance.roles {
                        case .initial, .loading, .failed:
                            Text(store.currentEmployee.data!.role)
                        case let .loaded(roles):
                            ForEach(roles, id: \.id) { role in
                                Button {
                                    editData.role = role
                                } label: {
                                    Text(role.name)
                                }
                            }
                        }
                    } label: {
                        switch editData.role?.name {
                        case let .some(name):
                            Text(name)
                        case .none:
                            Text(store.currentEmployee.data!.role)
                        }
                    }
                    
                    Button("Update") {
                        store.updateEmployee(id: id, editData)
                        self.isEditMode = false
                        self.editData = UpdateEmployeeData()
                    }
                    Button("Cancel") {
                        self.isEditMode = false
                    }
                }
            }.padding()
        }
        else {
            switch store.currentEmployee {
            case .initial,
                 .loading:
                ProgressView()
            case let .loaded(employee):
                VStack(alignment: .leading) {
                    Text("Code: \(employee.code)")
                    Text("Name: \(employee.firstName) \(employee.lastName)")
                    Text("Email: \(employee.email)")
                    Text("Role: \(employee.role)")
                    Button("Delete") {
                        self.store.deleteEmployee(id: id)
                        isRemoved = true
                    }
                    Button("Edit") {
                        isEditMode = true
                    }
                }.padding()
            default:
                Text("Loading failed")
            }
        }
    }
}

