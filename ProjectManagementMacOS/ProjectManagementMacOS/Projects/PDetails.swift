//
//  PDetails.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 09.01.2021.
//

import SwiftUI

struct PDetails: View  {
    @Binding var state: ViewState
    @ObservedObject var store: ProjectsDataStore
    
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        return dateFormatter
    }()
    
    var body: some View {
        switch store.currentProject {
        case .initial,
             .loading:
            ProgressView()
        case let .loaded(project):
//            List {
                HStack {
                    VStack(alignment: .leading) {
                        Group {
                            Text("Name: \(project.name)")
                            Text("Description: \(project.description)")
                            Text("Budget: \(project.budget)")
                            Text("Start Date: \(dateFormatter.string(from: project.startDate))")
                            Text("End Date: \(dateFormatter.string(from:project.endDate))")
                        }
                        
                        Divider()
                        Group {
                            HStack {
                                Text("Manager: \(project.manager.name)")
                                Button("→") {
                                    state = .managerDetails(id: project.manager.id)
                                }
                            }
                            HStack {
                                Text("Client: \(project.client.name)")
                                Button("→") {
                                    state = .clientDetails(id: project.client.id)
                                }
                            }
                            
                            Divider()
                            HStack {
                                Button("Delete") {
                                    store.deleteProject(project.id)
                                    state = .removed
                                }
                                
                                Button("Edit") {
                                    let addProjectData = AddProjectData(project_name: project.name,
                                                                        start_date: project.startDate,
                                                                        end_date: project.endDate,
                                                                        project_descr: project.description,
                                                                        budget: project.budget,
                                                                        employee: project.manager,
                                                                        client: project.client)
                                    state = .edit(project.id, addProjectData)
                                }
                            }
                        }
                        
                        Divider()
                        Text("Tasks").font(.headline)
                        Button("Add task") {
                            state = .createTask
                        }
                        List() {
                            ForEach(project.tasks,
                                    id: \.id) { task in
                                HStack {
                                    Text("\(task.name)").font(.headline)
                                    Text("Status: \(task.status)")
                                    Button("→") {
                                        state = .taskDetails(id: task.id)
                                    }
                                }
                            }
                        }
                    }
//                    Spacer()
                }
//                Spacer()
//            }.padding()
        default:
            Text("Loading failed")
        }
    }
}
