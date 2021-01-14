//
//  ProjectDetails.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 09.01.2021.
//

import SwiftUI

enum ViewState {
    case details
    case edit(Int, AddProjectData)
    case removed
    case managerDetails(id: Int)
    case clientDetails(id: Int)
    case createTask
    case taskDetails(id: Int)
    case taskAssigneeDetails(id: Int, taskId: Int)
    case editTask(id: Int, data: AddTaskData)
    case createSubtask(taskId: Int)
    case subtaskDetails(id: Int, taskId: Int)
    case subtaskAssigneeDetails(id: Int, taskId: Int, subtaskId: Int)
    case editSubtask(id: Int, taskId: Int, data: AddTaskData)
}

struct ProjectDetails: View {
    
    struct MissingClientError: Error {}
    
    @ObservedObject var store: ProjectsDataStore
    @State var state = ViewState.details
    @State var editData: UpdateClientData = UpdateClientData()
    
    private let dateFormatter: DateFormatter
    let id: Int
    
    init(id: Int,
         store: ProjectsDataStore) {
        self.id = id
        self.store = store
        self.dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
    }
    
    var body: some View {
        switch state {
        case .details:
            PDetails(state: $state, store: store)
        case let .managerDetails(id):
            HStack(alignment: .top) {
                Button("←") {
                    state = .details
                }
                EmployeeDetails(id: id,
                                isEditable: false,
                                store: EmployeesDataStore.instance).onAppear {
                                    EmployeesDataStore.instance.loadEmployee(id: id)
                                }
            }.transition(AnyTransition.move(edge: .trailing)).animation(.default)
        case let .clientDetails(id):
            HStack(alignment: .top) {
                Button("←") {
                    state = .details
                }
                ClientDetails(id: id,
                              isEditable: false,
                              store: ClientsDataStore.instance).onAppear {
                                ClientsDataStore.instance.loadClient(id: id)
                              }
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case let .edit(id, editData):
            HStack(alignment: .top) {
                Button("←") {
                    state = .details
                }
                EditProject(state: $state,
                            projectsDataStore: store,
                            project: editData,
                            id: id)
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case .createTask:
            HStack(alignment: .top) {
                Button("←") {
                    state = .details
                }
                AddTask(state: $state, projectsDataStore: store)
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case let .taskDetails(id):
            HStack(alignment: .top) {
                Button("←") {
                    state = .details
                }
                TaskDetails(state: $state, store: store).onAppear {
                    store.changeCurrentTask(id)
                }
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case let .taskAssigneeDetails(id, taskId):
            HStack(alignment: .top) {
                Button("←") {
                    state = .taskDetails(id: taskId)
                }
                EmployeeDetails(id: id,
                                isEditable: false,
                                store: EmployeesDataStore.instance).onAppear {
                                    EmployeesDataStore.instance.loadEmployee(id: id)
                                }
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case let .editTask(id, data):
            HStack(alignment: .top) {
                Button("←") {
                    state = .taskDetails(id: id)
                }
                EditTask(state: $state,
                         projectsDataStore: store,
                         task: data,
                         taskId: id)
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case let .createSubtask(taskId):
            HStack(alignment: .top) {
                Button("←") {
                    state = .taskDetails(id: taskId)
                }
                AddSubtask(state: $state,
                           projectsDataStore: store,
                           taskId: taskId)
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case let .subtaskDetails(id, taskId):
            HStack(alignment: .top) {
                Button("←") {
                    state = .taskDetails(id: taskId)
                }
                SubTaskDetails(state: $state, store: store, taskId: taskId).onAppear {
                    store.changeCurrentSubTask(id)
                }
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case let .subtaskAssigneeDetails(id, taskId, subtaskId):
            HStack(alignment: .top) {
                Button("←") {
                    state = .subtaskDetails(id: subtaskId, taskId: taskId)
                }
                EmployeeDetails(id: id,
                                isEditable: false,
                                store: EmployeesDataStore.instance).onAppear {
                                    EmployeesDataStore.instance.loadEmployee(id: id)
                                }
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        case let .editSubtask(id, taskId, data):
            HStack(alignment: .top) {
                Button("←") {
                    state = .subtaskDetails(id: id, taskId: taskId)
                }
                EditSubTask(state: $state,
                            projectsDataStore: store,
                            task: data,
                            taskId: taskId,
                            subtaskId: id)
            }.transition(AnyTransition.move(edge: .trailing)).animation(.none)
        default:
            Text("No data")
        }
    }
}

