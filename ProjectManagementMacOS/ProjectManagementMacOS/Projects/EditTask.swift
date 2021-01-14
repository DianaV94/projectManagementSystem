//
//  AddProject.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 09.01.2021.
//

import SwiftUI


struct EditTask: View {
    @Binding var state: ViewState
    @ObservedObject var projectsDataStore: ProjectsDataStore
    @State var task: AddTaskData
    let taskId: Int
    
    var body: some View {
        let priorityProxy = Binding<String>(
            get: { String(task.priority) },
            set: {
                if let value = Int($0) {
                    task.priority = value
                }
            }
        )
        
        return VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Text("Task name")
                    .font(.callout)
                    .bold()
                TextField(task.name, text: $task.name) .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            VStack(alignment: .leading) {
                Text("Task description")
                    .font(.callout)
                    .bold()
                TextEditor(text: $task.description).textFieldStyle(RoundedBorderTextFieldStyle()).frame(height: 100)
            }
            
            VStack(alignment: .leading) {
                Text("Task start date")
                    .font(.callout)
                DatePicker("",
                           selection: $task.start_date,
                           in: Date()...,
                           displayedComponents: .date)
                    .datePickerStyle(StepperFieldDatePickerStyle())
            }
            
            VStack(alignment: .leading) {
                Text("Task end date")
                    .font(.callout)
                DatePicker("",
                           selection: $task.end_date,
                           in: task.start_date...,
                           displayedComponents: .date)
                    .datePickerStyle(StepperFieldDatePickerStyle())
            }
                
            VStack(alignment: .leading) {
                Text("Priority")
                    .font(.callout)
                    .bold()
                TextField("\(task.priority)", text: priorityProxy)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            VStack(alignment: .leading) {
                Text("Status")
                    .font(.callout)
                    .bold()
                TextField(task.status, text: $task.status)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            
            VStack(alignment: .leading) {
                Text("Assigned")
                    .font(.callout)
                    .bold()
                Menu {
                    switch EmployeesDataStore.instance.employees {
                    case .initial, .loading, .failed:
                        Text("Loading...")
                    case let .loaded(employees):
                        ForEach(employees, id: \.id) { employee in
                            Button {
                                task.employee = employee
                            } label: {
                                Text(employee.name)
                            }
                        }
                    }
                } label: {
                    switch task.employee?.name {
                    case let .some(name):
                        Text(name)
                    case .none:
                        Text("Choose Assignee")
                    }
                }
            }
            
            Button("Save") {
                projectsDataStore.updateTask(taskId, data: task)
                state = .taskDetails(id: taskId)
            }
            Spacer()
        }.padding()
    }
}
