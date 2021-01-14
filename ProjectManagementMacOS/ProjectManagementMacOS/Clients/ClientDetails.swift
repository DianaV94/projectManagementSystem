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
    let isEditable: Bool
    
    init(id: Int,
         isEditable: Bool = true,
         store: ClientsDataStore) {
        self.id = id
        self.isEditable = isEditable
        self.store = store
    }
    
    var body: some View {
        if isRemoved {
            HStack {
                VStack {
                    Text("Deleted")
                    Spacer()
                }
                Spacer()
            }
        }
        else if isEditMode {
            HStack {
                VStack(alignment: .leading) {
                    Text("Client name")
                        .font(.callout)
                        .bold()
                    TextField(store.currentClient.data!.name, text: $editData.name) .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Client email")
                        .font(.callout)
                        .bold()
                    TextField(store.currentClient.data!.email, text: $editData.email) .textFieldStyle(RoundedBorderTextFieldStyle())
                    Group {
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
                        Spacer()
                    }
                }
                Spacer()
            }.padding()
        } else {
            switch store.currentClient {
            case .initial,
                 .loading:
                ProgressView()
            case let .loaded(client):
                HStack {
                    VStack(alignment: .leading) {
                        Text("Name: \(client.name)")
                        Text("Email: \(client.email)")
                        Text("Details: \(client.details)")
                        Text("Address: \(client.address)")
                        if isEditable {
                            Button("Delete") {
                                self.store.deleteClient(id)
                                isRemoved = true
                            }
                            Button("Edit") {
                                isEditMode = true
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
