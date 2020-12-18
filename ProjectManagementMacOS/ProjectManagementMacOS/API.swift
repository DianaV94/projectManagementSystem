// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class EmployeesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Employees {
      employees {
        __typename
        id
        employee_code
        employee_name
        account {
          __typename
          id
          email
          firstname
          lastname
        }
        role {
          __typename
          id
          role_name
        }
      }
    }
    """

  public let operationName: String = "Employees"

  public let operationIdentifier: String? = "3558d07ccce7c58267f2e7b630ccfe277e7f06a7a6feb73b3f63b21ba427ab4b"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("employees", type: .list(.object(Employee.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(employees: [Employee?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "employees": employees.flatMap { (value: [Employee?]) -> [ResultMap?] in value.map { (value: Employee?) -> ResultMap? in value.flatMap { (value: Employee) -> ResultMap in value.resultMap } } }])
    }

    public var employees: [Employee?]? {
      get {
        return (resultMap["employees"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Employee?] in value.map { (value: ResultMap?) -> Employee? in value.flatMap { (value: ResultMap) -> Employee in Employee(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Employee?]) -> [ResultMap?] in value.map { (value: Employee?) -> ResultMap? in value.flatMap { (value: Employee) -> ResultMap in value.resultMap } } }, forKey: "employees")
      }
    }

    public struct Employee: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Employee"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("employee_code", type: .nonNull(.scalar(String.self))),
          GraphQLField("employee_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("account", type: .nonNull(.object(Account.selections))),
          GraphQLField("role", type: .nonNull(.object(Role.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, employeeCode: String, employeeName: String, account: Account, role: Role) {
        self.init(unsafeResultMap: ["__typename": "Employee", "id": id, "employee_code": employeeCode, "employee_name": employeeName, "account": account.resultMap, "role": role.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var employeeCode: String {
        get {
          return resultMap["employee_code"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "employee_code")
        }
      }

      public var employeeName: String {
        get {
          return resultMap["employee_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "employee_name")
        }
      }

      public var account: Account {
        get {
          return Account(unsafeResultMap: resultMap["account"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "account")
        }
      }

      public var role: Role {
        get {
          return Role(unsafeResultMap: resultMap["role"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "role")
        }
      }

      public struct Account: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserAccount"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
            GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
            GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, email: String, firstname: String, lastname: String) {
          self.init(unsafeResultMap: ["__typename": "UserAccount", "id": id, "email": email, "firstname": firstname, "lastname": lastname])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var email: String {
          get {
            return resultMap["email"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var firstname: String {
          get {
            return resultMap["firstname"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "firstname")
          }
        }

        public var lastname: String {
          get {
            return resultMap["lastname"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastname")
          }
        }
      }

      public struct Role: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Role"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("role_name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, roleName: String) {
          self.init(unsafeResultMap: ["__typename": "Role", "id": id, "role_name": roleName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var roleName: String {
          get {
            return resultMap["role_name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "role_name")
          }
        }
      }
    }
  }
}
