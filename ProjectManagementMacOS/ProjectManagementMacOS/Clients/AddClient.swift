//
//  File.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 21.12.2020.
//

import SwiftUI
//import Apollo

struct AddClient: View {
    @ObservedObject var clientDataStore: ClientsDataStore
        
    @State var client: AddClientData
        
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Client name")
                    .font(.callout)
                    .bold()
            TextField("Enter client name...", text: $client.name) .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Client email")
                    .font(.callout)
                    .bold()
            TextField("Enter client email...", text: $client.email) .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Client address")
                    .font(.callout)
                    .bold()
            TextField("Enter client address...", text: $client.address) .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Client details")
                    .font(.callout)
                    .bold()
            TextField("Enter client details...", text: $client.details) .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Create") {
                clientDataStore.addClient(client)
            }
        }.padding()
    }
}
