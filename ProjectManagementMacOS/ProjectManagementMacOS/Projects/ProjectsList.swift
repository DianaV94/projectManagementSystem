//
//  ProjectsList.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 09.01.2021.
//

import SwiftUI

struct ProjectList: View {
    @ObservedObject var store = ProjectsDataStore.instance

    var body: some View {
        switch store.projects {
        case .loading:
            ProgressView()
        case let .loaded(projects):
            VStack {
                NavigationLink(destination: AddProject(projectsDataStore: store)) {
                    Text("Add Project")
                }
                
                List() {
                    ForEach(projects,
                            id: \.id) { project in
                        NavigationLink(destination: ProjectDetails(id: project.id, store: store).onAppear {
                            store.changeCurrentProject(project.id)
                        }) {
                            Text(project.name).font(.headline)
                        }
                    }
                }
            }
        default:
            Text("Loading failed")
        }
    }
}
