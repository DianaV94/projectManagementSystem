//
//  RolesDataStore.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 29.12.2020.
//

import Foundation
import Apollo
import SwiftUI

struct Role {
    let id: Int
    let name: String
}

/// Class responsible for mapping between Apollo graphQl API and application domain
final class RolesDataStore: ObservableObject {
    static let instance = RolesDataStore()
    @Published var roles: DataState<[Role]> = .initial
    
    private init() {
        roles = .loading
        Network.shared.apollo.fetch(query: RolesQuery(), cachePolicy: .fetchIgnoringCacheCompletely) { result in
            switch result {
            case let .success(gqlResult):
                if let err = gqlResult.errors {
                    self.roles = .failed(err.first!)
                } else {
                    let roles = gqlResult.data?.roles.map { $0.compactMap { $0 }} ?? []
                    self.roles = .loaded(roles.map(self.mapGQLRoleToRole))
                }
            case let .failure(error):
                self.roles = .failed(error)
            }
        }
    }
    
    func mapGQLRoleToRole(_ gqlRole: RolesQuery.Data.Role) -> Role {
        .init(id: gqlRole.id, name: gqlRole.roleName)
    }
}

