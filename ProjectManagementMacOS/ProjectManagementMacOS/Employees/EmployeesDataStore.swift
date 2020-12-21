//
//  DataStore.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 18.12.2020.
//

import Foundation
import Apollo
import SwiftUI

struct EmployeeMetaInfo {
    let id: Int
    let name: String
}

/// Class responsible for mapping between Apollo graphQl API and application domain
final class EmployeesDataStore: ObservableObject {
    @Published var employees: DataState<[EmployeeMetaInfo]> = .initial
    
    init() {
        employees = .loading
        Network.shared.apollo.fetch(query: EmployeesQuery()) { result in
            switch result {
            case let .success(gqlResult):
                if let err = gqlResult.errors {
                    self.employees = .failed(err.first!)
                } else {
                    let employees = gqlResult.data?.employees.map { $0.compactMap { $0 }} ?? []
                    self.employees = .loaded(employees.map(self.mapGQLEmployeeToEmployeeMeta))
                }
            case let .failure(error):
                self.employees = .failed(error)
            }
        }
    }
    
    func deleteEmployee(forId id: Int) {
        Network.shared.apollo.perform(mutation: DeleteEmployeeMutation(id: id)) { result in
            switch result {
            case let .success(gqlSuccess):
                if let err = gqlSuccess.errors {
                    self.employees = .failed(err.first!)
                } else {
                    let filtered = self.employees.data?.filter {
                        $0.id != id } ?? []
                    self.employees = .loaded(filtered)
                }
            default:
                break
            }
        }
    }
    
    func mapGQLEmployeeToEmployeeMeta(_ gqlEmployee: EmployeesQuery.Data.Employee) -> EmployeeMetaInfo {
        .init(id: gqlEmployee.id, name: gqlEmployee.employeeName)
    }
}
