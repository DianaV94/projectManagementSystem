//
//  ProjectsDataStore.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 09.01.2021.
//

import Foundation
import SwiftUI

struct ProjectMetaInfo {
    let id: Int
    let name: String
}

struct AddProjectData {
    var project_name: String = ""
    var start_date: Date = Date()
    var end_date: Date = Date()
    var project_descr: String = ""
    var budget: Int = 0
    var employee: EmployeeMetaInfo?
    var client: ClientMetaInfo?
}

struct Task {
    var id: Int
    var name: String
    var description: String
    var startDate: Date
    var endDate: Date
    var priority: Int
    var status: String
    var employee: EmployeeMetaInfo
    var subtasks: [TaskMetaInfo]
}

struct Project {
    var id: Int
    var name: String
    var description: String
    var startDate: Date
    var endDate: Date
    var budget: Int
    var manager: EmployeeMetaInfo
    var client: ClientMetaInfo
    var tasks: [TaskMetaInfo]
}

struct AddTaskData {
    var name: String = ""
    var description: String = ""
    var start_date: Date = Date()
    var end_date: Date = Date()
    var priority: Int = 0
    var status: String = ""
    var employee: EmployeeMetaInfo?
}

struct TaskMetaInfo {
    let id: Int
    let name: String
    let status: String
}

final class ProjectsDataStore: ObservableObject {
    struct MissingProjects: Error {}
    struct MissingProject: Error {}
    struct FailedToCreateProject: Error {}

    @Published var projects: DataState<[ProjectMetaInfo]> = .initial
    @Published var currentProject: DataState<Project> = .initial
    @Published var currentTask: DataState<Task> = .initial
    @Published var currentSubTask: DataState<Task> = .initial
    
    private lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd"
        return dateFormatter
    }()
    static let instance = ProjectsDataStore()
    
    private init() {
        projects = .loading
        print("---- Projects List fetching ---")
        Network.shared.apollo.fetch(query: ProjectsQuery(),
                                    cachePolicy: .fetchIgnoringCacheCompletely) { result in
            if let projects = try? result.get().data?.projects {
                let filteredProjects = projects.compactMap { $0 }
                let projectsMetaInfo = filteredProjects.map {
                    ProjectMetaInfo(id: $0.id, name: $0.projectName)
                }
                print("---- Projects List fetched ---")
                print("\(projectsMetaInfo)")
                self.projects = .loaded(projectsMetaInfo)
            } else {
                print("---- Projects List fetch failed ---")
                self.projects = .failed(MissingProjects())
            }
        }
    }
    
    func addProject(_ data: AddProjectData) {
        let projectInput = ProjectInput(projectName: data.project_name,
                                        startDate: dateFormatter.string(from: data.start_date),
                                        endDate: dateFormatter.string(from: data.end_date),
                                        projectDescr: data.project_descr,
                                        budget: data.budget,
                                        employeeId: data.employee!.id,
                                        clientId: data.client!.id)
        
        print("---- Creating new Project ---")
        print(projectInput)
        Network.shared.apollo.perform(mutation: CreateProjectMutation(input: projectInput)) { result in
            if let project = (try? result.get())?.data?.createProject {
                let newProject = ProjectMetaInfo(id: project.id, name: project.projectName)
                let oldProjects = self.projects.data ?? []
                print("---- Succesfully created new project ---")
                self.projects = .loaded([newProject] + oldProjects)
            } else {
                print("---- Failed to create new project ---")
                self.projects = .failed(FailedToCreateProject())
            }
        }
    }
    
    func deleteProject(_ id: Int) {
        Network.shared.apollo.perform(mutation: DeleteProjectMutation(id: id)) { result in
            if let _ = (try? result.get())?.data?.deleteProject {
                let oldProjects = self.projects.data ?? []
                let updatedProjects = oldProjects.filter { $0.id != id }
                self.projects = .loaded(updatedProjects)
            }
        }
    }
    
    func updateproject(_ id: Int, _ update: AddProjectData) {
        let updateInput = ProjectUpdateInput(projectName: update.project_name,
                                             startDate: dateFormatter.string(from: update.start_date),
                                             endDate: dateFormatter.string(from: update.end_date),
                                             projectDescr: update.project_descr,
                                             budget: update.budget,
                                             employeeId: update.employee?.id,
                                             clientId: update.client?.id)
        
        Network.shared.apollo.perform(mutation: UpdateProjectMutation(id: id, input: updateInput)) { result in
            if let _ = (try? result.get())?.data?.updateProject {
                let updatedMeta = ProjectMetaInfo(id: id,
                                                  name: update.project_name)
                var newMetas = self.projects.data!
                let idxOldMeta = newMetas.firstIndex {
                    $0.id == id
                }!
                newMetas[idxOldMeta] = updatedMeta
                self.projects = .loaded(newMetas)
            }
        }
    }
    
    func changeCurrentProject(_ id: Int) {
        Network.shared.apollo.fetch(query: ProjectQuery(id: id),
                                    cachePolicy: .fetchIgnoringCacheCompletely) { result in
            if let project = (try? result.get())?.data?.project {
                let startDate = Date(timeIntervalSince1970: TimeInterval(project.startDate)!/1000)
                let endDate = Date(timeIntervalSince1970: TimeInterval(project.endDate)!/1000)
                let manager = EmployeeMetaInfo(id: project.manager.id,
                                               name: project.manager.employeeName,
                                               role: Role(id: project.manager.role.id,
                                                          name: project.manager.role.roleName))
                let client = ClientMetaInfo(id: project.client.id, name: project.client.name)
                let tasks = project.tasks.compactMap { $0 }.map {
                    TaskMetaInfo(id: $0.id, name: $0.taskName, status: $0.status)
                }
                
                
                let downloadedProject = Project(id: project.id,
                                                name: project.projectName,
                                                description: project.projectDescr,
                                                startDate: startDate,
                                                endDate: endDate,
                                                budget: project.budget,
                                                manager: manager,
                                                client: client,
                                                tasks: tasks)
                self.currentProject = .loaded(downloadedProject)
            } else {
                self.currentProject = .failed(MissingProject())
            }
        }
    }
    
    func addTask(_ data: AddTaskData) {
        let addTaskInput = TaskInput(taskName: data.name,
                                     projectId: currentProject.data!.id,
                                     priority: data.priority,
                                     description: data.description,
                                     startDate: dateFormatter.string(from: data.start_date),
                                     endDate: dateFormatter.string(from: data.end_date),
                                     status: data.status,
                                     employeeId: data.employee!.id)
        Network.shared.apollo.perform(mutation: CreateTaskMutation(input: addTaskInput)) { result in
            if let newTask = (try? result.get())?.data?.createTask {
                let newTaskMeta = TaskMetaInfo(id: newTask.id,
                                               name: newTask.taskName,
                                               status: newTask.status)
                var updatedProject = self.currentProject.data!
                updatedProject.tasks += [newTaskMeta]
                self.currentProject = .loaded(updatedProject)
            }
        }
    }
    
    func changeCurrentTask(_ id: Int) {
        Network.shared.apollo.fetch(query: TaskQuery(id: id),
                                    cachePolicy: .fetchIgnoringCacheCompletely) { result in
            if let downloadedTask = (try? result.get())?.data?.task {
                let startDate = Date(timeIntervalSince1970: TimeInterval(downloadedTask.startDate)!/1000)
                let endDate = Date(timeIntervalSince1970: TimeInterval(downloadedTask.endDate)!/1000)
                let assigned = EmployeeMetaInfo(id: downloadedTask.assigned.id,
                                               name: downloadedTask.assigned.employeeName,
                                               role: Role(id: downloadedTask.assigned.role.id,
                                                          name: downloadedTask.assigned.role.roleName))
                let subtasks = downloadedTask.activities.compactMap { $0 }.map {
                    TaskMetaInfo(id: $0.id, name: $0.activityName, status: $0.status)
                }
                let task = Task(id: downloadedTask.id,
                                name: downloadedTask.taskName,
                                description: downloadedTask.description,
                                startDate: startDate,
                                endDate: endDate,
                                priority: downloadedTask.priority,
                                status: downloadedTask.status,
                                employee: assigned,
                                subtasks: subtasks)
                self.currentTask = .loaded(task)
            }
        }
    }
    
    func deleteTask(_ id: Int) {
        Network.shared.apollo.perform(mutation: DeleteTaskMutation(id: id)) { result in
//            if let _ = (try? result.get())?.data?.deleteTask {
//                var updatedProject = self.currentProject.data!
//                updatedProject.tasks = updatedProject.tasks.filter { $0.id != id }
//                self.currentTask = .initial
//                self.currentProject = .loaded(updatedProject)
//            }
        }
    }
    
    func updateTask(_ id: Int, data: AddTaskData) {
        let updateTaskInput = TaskUpdateInput(taskName: data.name,
                                              priority: data.priority,
                                              description: data.description,
                                              startDate: dateFormatter.string(from: data.start_date),
                                              endDate: dateFormatter.string(from: data.end_date),
                                              status: data.status,
                                              employeeId: data.employee?.id)
        
        Network.shared.apollo.perform(mutation: UpdateTaskMutation(id: id, input: updateTaskInput)) { _ in
        }
    }
    
    func addSubtask(_ data: AddTaskData) {
        let input = ActivityInput(activityName: data.name,
                                  taskId: currentTask.data!.id,
                                  priority: data.priority,
                                  description: data.description,
                                  startDate: dateFormatter.string(from: data.start_date),
                                  endDate: dateFormatter.string(from: data.end_date),
                                  status: data.status,
                                  employeeId: data.employee!.id)
        Network.shared
            .apollo.perform(mutation: CreateActivityMutation(input: input)) { _ in
        }
    }
    
    func changeCurrentSubTask(_ id: Int) {
        Network.shared.apollo.fetch(query: ActivityQuery(id: id),
                                    cachePolicy: .fetchIgnoringCacheCompletely) { result in
            if let downloadedActivity = (try? result.get())?.data?.activity {
                let startDate = Date(timeIntervalSince1970: TimeInterval(downloadedActivity.startDate)!/1000)
                let endDate = Date(timeIntervalSince1970: TimeInterval(downloadedActivity.endDate)!/1000)
                let assigned = EmployeeMetaInfo(id: downloadedActivity.assigned.id,
                                               name: downloadedActivity.assigned.employeeName,
                                               role: Role(id: downloadedActivity.assigned.role.id,
                                                          name: downloadedActivity.assigned.role.roleName))
                let activity = Task(id: downloadedActivity.id,
                                    name: downloadedActivity.activityName,
                                    description: downloadedActivity.description,
                                    startDate: startDate,
                                    endDate: endDate,
                                    priority: downloadedActivity.priority,
                                    status: downloadedActivity.status,
                                    employee: assigned,
                                    subtasks: [])
                self.currentSubTask = .loaded(activity)
                
            }
        }
    }
    
    func deleteSubTask(_ id: Int) {
        Network.shared.apollo.perform(mutation: DeleteActivityMutation(id: id)) { _ in
            
        }
    }
    
    func updateSubTask(_ id: Int, data: AddTaskData) {
        let updateTaskInput = ActivityUpdateInput(activityName: data.name,
                                              priority: data.priority,
                                              description: data.description,
                                              startDate: dateFormatter.string(from: data.start_date),
                                              endDate: dateFormatter.string(from: data.end_date),
                                              status: data.status,
                                              employeeId: data.employee?.id)
        
        Network.shared.apollo.perform(mutation: UpdateActivityMutation(id: id, input: updateTaskInput)) { result in
            
        }
    }
}
