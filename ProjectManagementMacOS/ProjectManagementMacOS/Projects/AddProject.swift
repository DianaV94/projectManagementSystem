//
//  AddProject.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 09.01.2021.
//

import SwiftUI


struct AddProject: View {
    
    @ObservedObject var projectsDataStore: ProjectsDataStore

    @State var project: AddProjectData = AddProjectData()
    
    var body: some View {
        let budgetProxy = Binding<String>(
            get: { String(project.budget) },
            set: {
                if let value = Int($0) {
                    project.budget = value
                }
            }
        )
        return VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Text("Project name")
                    .font(.callout)
                    .bold()
                TextField("Enter project name", text: $project.project_name) .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            VStack(alignment: .leading) {
                Text("Project description")
                    .font(.callout)
                    .bold()
                TextEditor(text: $project.project_descr).textFieldStyle(RoundedBorderTextFieldStyle()).frame(height: 100)
            }
            
            VStack(alignment: .leading) {
                Text("Project start date")
                    .font(.callout)
                DatePicker("",
                           selection: $project.start_date,
                           in: Date()...,
                           displayedComponents: .date)
                    .datePickerStyle(StepperFieldDatePickerStyle())
            }
            
            VStack(alignment: .leading) {
                Text("Project end date")
                    .font(.callout)
                DatePicker("",
                           selection: $project.end_date,
                           in: project.start_date.advanced(by: 24*3600)...,
                           displayedComponents: .date)
                    .datePickerStyle(StepperFieldDatePickerStyle())
            }
                
            VStack(alignment: .leading) {
                Text("Project Budget")
                    .font(.callout)
                    .bold()
                TextField("Enter project budget", text: budgetProxy)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            
            VStack(alignment: .leading) {
                Text("Project Manager")
                    .font(.callout)
                    .bold()
                Menu {
                    switch EmployeesDataStore.instance.employees {
                    case .initial, .loading, .failed:
                        Text("Loading...")
                    case let .loaded(employees):
                        ForEach(employees.filter { $0.role.id == 5 }, id: \.id) { manager in
                            Button {
                                project.employee = manager
                            } label: {
                                Text(manager.name)
                            }
                        }
                    }
                } label: {
                    switch project.employee?.name {
                    case let .some(name):
                        Text(name)
                    case .none:
                        Text("Choose Manager")
                    }
                }
            }
            
            VStack(alignment: .leading) {
                Text("Project Client")
                    .font(.callout)
                    .bold()
                Menu {
                    switch ClientsDataStore.instance.clients {
                    case .initial, .loading, .failed:
                        Text("Loading...")
                    case let .loaded(clients):
                        ForEach(clients, id: \.id) { client in
                            Button {
                                project.client = client
                            } label: {
                                Text(client.name)
                            }
                        }
                    }
                } label: {
                    switch project.client?.name {
                    case let .some(name):
                        Text(name)
                    case .none:
                        Text("Choose Client")
                    }
                }
            }
            Button("Create") {
                projectsDataStore.addProject(project)
                project = AddProjectData()
            }
        }.padding()
    }
}
