//
//  PDetails.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 09.01.2021.
//

import SwiftUI

struct TaskDetails: View  {
    @Binding var state: ViewState
    @ObservedObject var store: ProjectsDataStore
    @State var isRemoved: Bool = false
    
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        return dateFormatter
    }()
    
    var body: some View {
        if isRemoved {
            HStack {
                VStack {
                    Text("Task Removed").font(.headline)
                    Spacer()
                }
                Spacer()
            }
        } else {
            switch store.currentTask {
            case .initial,
                 .loading:
                ProgressView()
            case let .loaded(task):
                HStack {
                    VStack(alignment: .leading) {
                        Group {
                            Text("Name: \(task.name)")
                            Text("Description: \(task.description)")
                            Text("Priority: \(task.priority)")
                            Text("Status: \(task.status)")
                            Text("Start Date: \(dateFormatter.string(from: task.startDate))")
                            Text("End Date: \(dateFormatter.string(from:task.endDate))")
                        }
                        
                        Group {
                            Divider()
                            HStack {
                                Text("Assigned: \(task.employee.name)")
                                Button("→") {
                                    state = .taskAssigneeDetails(id: task.employee.id,
                                                                 taskId: task.id)
                                }
                            }
                            
                            Divider()
                            HStack {
                                Button("Delete") {
                                    store.deleteTask(task.id)
                                    isRemoved = true
                                }
                                
                                Button("Edit") {
                                    let editTaskData = AddTaskData(name: task.name,
                                                                   description: task.description,
                                                                   start_date: task.startDate,
                                                                   end_date: task.endDate,
                                                                   priority: task.priority,
                                                                   status: task.status,
                                                                   employee: task.employee)
                                    state = .editTask(id: task.id, data: editTaskData)
                                }
                            }
                        }
                        
                        Divider()
                        Text("Subtasks").font(.headline)
                        Button("Add subtask") {
                            state = .createSubtask(taskId: task.id)
                        }
                        List() {
                            ForEach(task.subtasks,
                                    id: \.id) { subtask in
                                HStack {
                                    Text("\(subtask.name)").font(.headline)
                                    Text("Status: \(subtask.status)")
                                    Button("→") {
                                        state = .subtaskDetails(id: subtask.id,
                                                                taskId: task.id)
                                    }
                                }
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                }.padding()
            default:
                Text("Loading failed")
            }
        }
    }
}
