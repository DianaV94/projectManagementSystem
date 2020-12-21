//
//  File.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 21.12.2020.
//

import SwiftUI

struct ClientsList: View {
    @ObservedObject var store: ClientsDataStore = ClientsDataStore()
    
    var body: some View {
        switch store.clients {
        case .loading:
            ProgressView()
        case let .loaded(clients):
            VStack {
                NavigationLink(destination: AddClient(clientDataStore: store, client: AddClientData())) {
                    Text("Add Client")
                }
                
                List() {
                    ForEach(clients,
                            id: \.id) { client in
                        NavigationLink(destination: ClientDetails(id: client.id, store: store).onAppear {
                            store.loadClient(id: client.id)
                        }) {
                            Text(client.name).font(.headline)
                        }
                    }
                }
            }
        default:
            Text("Loading failed")
        }
    }
}

//struct TableEntriesList_Previews: PreviewProvider {
//    static var previews: some View {
//        TableEntriesList(title: "Name")
//    }
//}

