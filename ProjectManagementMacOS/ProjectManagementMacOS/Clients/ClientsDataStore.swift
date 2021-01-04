//
//  File.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 21.12.2020.
//

import Foundation
import Apollo
import SwiftUI

struct ClientMetaInfo {
    let id: Int
    let name: String
}

struct Client {
    let name: String
    let email: String
    let address: String
    let details: String
}

struct AddClientData {
    var name: String = ""
    var email: String = ""
    var address: String = ""
    var details: String = ""
}

struct UpdateClientData {
    var name: String = ""
    var email: String = ""
    var address: String = ""
    var details: String = ""
}

/// Class responsible for mapping between Apollo graphQl API and application domain
final class ClientsDataStore: ObservableObject {
    struct MissingClientError: Error {}
    
    @Published var clients: DataState<[ClientMetaInfo]> = .initial
    @Published var currentClient: DataState<Client> = .initial
    
    init() {
        clients = .loading
        Network.shared.apollo.fetch(query: ClientsQuery(), cachePolicy: .fetchIgnoringCacheCompletely) { result in
            if let clients = try? result.get().data?.clients {
                let filterterdClients = clients.compactMap { $0 }
                self.clients = .loaded(filterterdClients.map(self.mapGQLClientToClientMetaInfo))
            } else {
                self.clients = .failed(MissingClientError())
            }
        }
    }
    
    func loadClient(id: Int) {
        Network.shared.apollo.fetch(query: ClientQuery(id: id), cachePolicy: .fetchIgnoringCacheCompletely) { result in
            if let client = try? result.get().data?.client {
                self.currentClient = .loaded(Client(name: client.name,
                                  email: client.email,
                                  address: client.address,
                                  details: client.details))
            } else {
                self.currentClient = .failed(MissingClientError())
            }
            
        }
    }
    
    func deleteClient(_ id: Int) {
        Network.shared.apollo.perform(mutation: DeleteClientMutation(id: id)) { result in
            
            if let _ = try? result.get().data?.deleteClient {
                let currentClients = self.clients.data ?? []
                let listWithoutRemovedClient = currentClients.filter {
                    $0.id != id }
                self.clients = .loaded(listWithoutRemovedClient)

            }
        }
    }
    
    func addClient(_ data: AddClientData) {
        let input = ClientInput(name: data.name,
                                address: data.address,
                                details: data.details,
                                email: data.email)
        Network.shared.apollo.perform(mutation: CreateClientMutation(input: input)) { result in
            
            if let createdClient = try? result.get().data?.createClient {
                let createdClientMetaInfo = ClientMetaInfo(id: createdClient.id, name: createdClient.name)
                let currentClients = self.clients.data ?? []
                self.clients = .loaded([createdClientMetaInfo] + currentClients)
            }
        }
    }
    
    func updateClient(id: Int, data: UpdateClientData) {
        let name: Optional<String?> = {
            if !data.name.isEmpty {
                return .some(data.name)
            }
            return .none
        }()
        let address: Optional<String?> = {
            if !data.address.isEmpty {
                return .some(data.address)
            }
            return .none
        }()
        let details: Optional<String?> = {
            if !data.details.isEmpty {
                return .some(data.details)
            }
            return .none
        }()
        let email: Optional<String?> = {
            if !data.email.isEmpty {
                return .some(data.email)
            }
            return .none
        }()
        let input = ClientUpdateInput(name: name,
                                      address: address,
                                      details: details,
                                      email: email)
        Network.shared.apollo.perform(mutation: UpdateClientMutation(id: id,
                                                                     input: input)) { result in
            if let _ = try? result.get().data?.updateClient {
                let oldClient = self.currentClient.data!
                let updatedClient = Client(name: !data.name.isEmpty ? data.name : oldClient.name,
                                           email: !data.email.isEmpty ? data.email : oldClient.email,
                                           address: !data.address.isEmpty ? data.address : oldClient.address,
                                           details: !data.details.isEmpty ? data.details : oldClient.details)
                self.currentClient = .loaded(updatedClient)
            }
        }
    }
    
    func mapGQLClientToClientMetaInfo(_ gqlClient: ClientsQuery.Data.Client) -> ClientMetaInfo {
        .init(id: gqlClient.id,
              name: gqlClient.name)
    }
}


