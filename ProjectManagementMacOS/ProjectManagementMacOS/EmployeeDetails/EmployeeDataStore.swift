//
//  File.swift
//  ProjectManagementMacOS
//
//  Created by Diana on 21.12.2020.
//

import Foundation
import Apollo
import SwiftUI

struct Employee {
    let id: Int
    let code: String
    let firstName: String
    let lastName: String
    let email: String
    let role: String
}

/// Class responsible for mapping between Apollo graphQl API and application domain
final class EmployeeDataStore: ObservableObject {
    struct MissingEmployeeError: Error {}
    
    @Published var state: DataState<Employee> = .initial
    
    init(id: Int) {
        state = .loading
        Network.shared.apollo.fetch(query: EmployeeQuery(id: id)) { result in
            switch result {
            case let .success(gqlResult):
                if let err = gqlResult.errors {
                    self.state = .failed(err.first!)
                } else if let employee = gqlResult.data?.employee{
                    self.state = .loaded(self.mapGQLEmployeeToAppEmployee(employee))
                } else {
                    self.state = .failed(MissingEmployeeError())
                }
            case let .failure(error):
                self.state = .failed(error)
            }
        }
    }
    
    func mapGQLEmployeeToAppEmployee(_ gqlEmployee: EmployeeQuery.Data.Employee) -> Employee {
        .init(id: 1,
              code: gqlEmployee.employeeCode,
              firstName: gqlEmployee.account.firstname,
              lastName: gqlEmployee.account.lastname,
              email: gqlEmployee.account.email,
              role: gqlEmployee.role.roleName)
    }
}

