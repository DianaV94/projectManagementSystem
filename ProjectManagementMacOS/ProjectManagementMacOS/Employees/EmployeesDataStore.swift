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

struct Employee {
    var code: String
    var userName: String
    var firstName: String
    var lastName: String
    var email: String
    var role: String
    var accountId: Int
    
    mutating func setField<Value>(kp: WritableKeyPath<Employee, Value>) -> (Value) -> Void {
        var mut = self
        return { value in
            mut[keyPath: kp] = value
        }
    }
}

struct UpdateEmployeeData {
    var code: String = ""
    var userName: String = ""
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var role: Role? = nil
}

struct AddEmployeeData {
    var code: String = ""
    var userName: String = ""
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var role: Role? = nil
}

/// Class responsible for mapping between Apollo graphQl API and application domain
final class EmployeesDataStore: ObservableObject {
    struct MissingEmployeeError: Error {}
    
    @Published var employees: DataState<[EmployeeMetaInfo]> = .initial
    @Published var currentEmployee: DataState<Employee> = .initial
    
    init() {
        employees = .loading
        Network.shared.apollo.fetch(query: EmployeesQuery(), cachePolicy: .fetchIgnoringCacheCompletely) { result in
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
    
    func deleteEmployee(id: Int) {
        let mutation = DeleteEmployeeMutation(id: id)
        Network.shared.apollo.perform(mutation: mutation) { result in
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
    
    func loadEmployee(id: Int) {
        Network.shared.apollo.fetch(query: EmployeeQuery(id: id), cachePolicy: .fetchIgnoringCacheCompletely) { result in
            if let employee = try? result.get().data?.employee {
                self.currentEmployee = .loaded(Employee(code: employee.employeeCode,
                                                        userName: employee.employeeName,
                                                        firstName: employee.account.firstname,
                                                        lastName: employee.account.lastname,
                                                        email: employee.account.email,
                                                        role: employee.role.roleName, accountId: employee.account.id))
            } else {
                self.currentEmployee = .failed(MissingEmployeeError())
            }
        }
    }
    
    func updateEmployee(id: Int,
                        _ data: UpdateEmployeeData) {
        let firstName = data.firstName.wrappedIntoApolloOptional
        let lastName = data.lastName.wrappedIntoApolloOptional
        let email = data.email.wrappedIntoApolloOptional
        let code = data.code.wrappedIntoApolloOptional
        
        let roleId: Optional<Int?> = {
            if let roleId = data.role?.id {
                return .some(roleId)
            }
            return .none
        }()
        
        let employeeUpdateInput = EmployeeUpdateInput(employeeCode: code,
                                                      roleId: roleId)
        
        let accountUpdateInput = UserAccountUpdateInput(email: email,
                                                        firstname: firstName,
                                                        lastname: lastName)
        
        let oldEmploye = self.currentEmployee.data!
        let updateEmployeeMutation = UpdateEmployeeMutation(id: id,
                                                            input: employeeUpdateInput)
        let updateAccountMutation = UpdateAccountMutation(id: oldEmploye.accountId,
                                                          input: accountUpdateInput)
        Network.shared.apollo.perform(mutation: updateEmployeeMutation) { result in
            if let _ = try? result.get().data {
                Network.shared.apollo.perform(mutation: updateAccountMutation) { result in
                    if let _ = try? result.get().data {
                        var newEmployee = oldEmploye
                        
                        data.code.doOnNonempty(newEmployee.setField(kp: \.code))
                        data.firstName.doOnNonempty(newEmployee.setField(kp: \.firstName))
                        data.lastName.doOnNonempty(newEmployee.setField(kp: \.lastName))
                        data.email.doOnNonempty(newEmployee.setField(kp: \.email))
                        data.role.flatMap { $0.name }.map(newEmployee.setField(kp: \.role))

                        self.currentEmployee = .loaded(newEmployee)
                    }
                }
            }
        }
    }
    
    func mapGQLEmployeeToEmployeeMeta(_ gqlEmployee: EmployeesQuery.Data.Employee) -> EmployeeMetaInfo {
        .init(id: gqlEmployee.id, name: gqlEmployee.employeeName)
    }
}
