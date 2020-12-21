//
//  File.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 21.12.2020.
//

import SwiftUI

struct ClientDetails: View {
    struct MissingClientError: Error {}
    
    @ObservedObject var store: ClientsDataStore
    @State var isRemoved: Bool = false
    @State var isEditMode: Bool = false
    @State var editData: UpdateClientData = UpdateClientData()
    
    
    let id: Int
    
    init(id: Int,
         store: ClientsDataStore) {
        self.id = id
        self.store = store
    }

    var body: some View {
        if isRemoved {
             Text("Deleted")
        }
        else if isEditMode {
             VStack(alignment: .leading) {
                Text("Client name")
                        .font(.callout)
                        .bold()
                TextField(store.currentClient.data!.name, text: $editData.name) .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("Client email")
                        .font(.callout)
                        .bold()
                TextField(store.currentClient.data!.email, text: $editData.email) .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Client address")
                        .font(.callout)
                        .bold()
                TextField(store.currentClient.data!.address, text: $editData.address) .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Client details")
                        .font(.callout)
                        .bold()
                TextField(store.currentClient.data!.details, text: $editData.details) .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Update") {
                    store.updateClient(id: id, data: editData)
                    self.isEditMode = false
                }
                Button("Cancel") {
                    self.isEditMode = false
                }
            }.padding()
        } else {
            switch store.currentClient {
            case .initial,
                 .loading:
                 ProgressView()
            case let .loaded(client):
                VStack(alignment: .leading) {
                    Text("Name: \(client.name)")
                    Text("Email: \(client.email)")
                    Text("Details: \(client.details)")
                    Text("Address: \(client.address)")
                    Button("Delete") {
                        self.store.deleteClient(id)
                        isRemoved = true
                    }
                    Button("Edit") {
                        isEditMode = true
                    }
                 }.padding()
            default:
                 Text("Loading failed")
            }
        }
    }
}
