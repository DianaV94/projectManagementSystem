//
//  AddEmployee.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 04.01.2021.
//

import SwiftUI

struct AddEmployee: View {
    @ObservedObject var store: EmployeesDataStore
        
    @State var employee: AddEmployeeData
        
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("Employee code")
                    .font(.callout)
                    .bold()
                TextField("Enter employee code", text: $employee.code) .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Employee username")
                    .font(.callout)
                    .bold()
                TextField("Enter employee username", text: $employee.userName) .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Employee first name")
                    .font(.callout)
                    .bold()
                TextField("Enter employee first name", text: $employee.firstName) .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Employee last name")
                    .font(.callout)
                    .bold()
                TextField("Enter employee last name", text: $employee.lastName) .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Employee email")
                    .font(.callout)
                    .bold()
                TextField("Enter employee email", text: $employee.email) .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Group {
                Text("Employee role")
                    .font(.callout)
                    .bold()
                Menu {
                    switch RolesDataStore.instance.roles {
                    case .initial, .loading, .failed:
                        Text("Loading...")
                    case let .loaded(roles):
                        ForEach(roles, id: \.id) { role in
                            Button {
                                employee.role = role
                            } label: {
                                Text(role.name)
                            }
                        }
                    }
                } label: {
                    switch employee.role?.name {
                    case let .some(name):
                        Text(name)
                    case .none:
                        Text("Choose Role")
                    }
                }
                
                Button("Create") {
                    store.addEmployee(employee)
//                    store.updateEmployee(id: id, editData)
                }
            }
        }.padding()
    }
}

