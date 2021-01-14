//
//  PDetails.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 09.01.2021.
//

import SwiftUI

struct SubTaskDetails: View  {
    @Binding var state: ViewState
    @ObservedObject var store: ProjectsDataStore
    @State var isRemoved: Bool = false
    let taskId: Int
    
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
            switch store.currentSubTask {
            case .initial,
                 .loading:
                ProgressView()
            case let .loaded(subtask):
                HStack {
                    VStack(alignment: .leading) {
                        Group {
                            Text("Name: \(subtask.name)")
                            Text("Description: \(subtask.description)")
                            Text("Priority: \(subtask.priority)")
                            Text("Status: \(subtask.status)")
                            Text("Start Date: \(dateFormatter.string(from: subtask.startDate))")
                            Text("End Date: \(dateFormatter.string(from:subtask.endDate))")
                        }
                        
                        Group {
                            Divider()
                            HStack {
                                Text("Assigned: \(subtask.employee.name)")
                                Button("→") {
                                    state = .subtaskAssigneeDetails(id: subtask.employee.id,
                                                                 taskId: taskId,
                                                                 subtaskId: subtask.id)
                                }
                            }
                            
                            Divider()
                            HStack {
                                Button("Delete") {
                                    store.deleteSubTask(subtask.id)
                                    isRemoved = true
                                }
                                
                                Button("Edit") {
                                    let editTaskData = AddTaskData(name: subtask.name,
                                                                   description: subtask.description,
                                                                   start_date: subtask.startDate,
                                                                   end_date: subtask.endDate,
                                                                   priority: subtask.priority,
                                                                   status: subtask.status,
                                                                   employee: subtask.employee)
                                    state = .editSubtask(id: subtask.id,
                                                         taskId: taskId,
                                                         data: editTaskData)
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
