// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct ClientInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - address
  ///   - details
  ///   - email
  public init(name: String, address: String, details: String, email: String) {
    graphQLMap = ["name": name, "address": address, "details": details, "email": email]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var address: String {
    get {
      return graphQLMap["address"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
  }

  public var details: String {
    get {
      return graphQLMap["details"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "details")
    }
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }
}

public struct ClientUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - address
  ///   - details
  ///   - email
  public init(name: Swift.Optional<String?> = nil, address: Swift.Optional<String?> = nil, details: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil) {
    graphQLMap = ["name": name, "address": address, "details": details, "email": email]
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var address: Swift.Optional<String?> {
    get {
      return graphQLMap["address"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
  }

  public var details: Swift.Optional<String?> {
    get {
      return graphQLMap["details"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "details")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }
}

public final class ClientQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Client($id: Int!) {
      client(id: $id) {
        __typename
        name
        address
        email
        details
      }
    }
    """

  public let operationName: String = "Client"

  public let operationIdentifier: String? = "dfc5b789ea03265d608a7508d7bc75006b61d35d012788f175678bb466b08650"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("client", arguments: ["id": GraphQLVariable("id")], type: .object(Client.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(client: Client? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "client": client.flatMap { (value: Client) -> ResultMap in value.resultMap }])
    }

    public var client: Client? {
      get {
        return (resultMap["client"] as? ResultMap).flatMap { Client(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "client")
      }
    }

    public struct Client: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Client"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("address", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .nonNull(.scalar(String.self))),
          GraphQLField("details", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, address: String, email: String, details: String) {
        self.init(unsafeResultMap: ["__typename": "Client", "name": name, "address": address, "email": email, "details": details])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var address: String {
        get {
          return resultMap["address"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
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

      public var details: String {
        get {
          return resultMap["details"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "details")
        }
      }
    }
  }
}

public final class ClientsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Clients {
      clients {
        __typename
        id
        name
      }
    }
    """

  public let operationName: String = "Clients"

  public let operationIdentifier: String? = "246a6b69b519cd0147c30cd4738abafba6e01b87dd39f5cc309bad359195546f"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("clients", type: .list(.object(Client.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(clients: [Client?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "clients": clients.flatMap { (value: [Client?]) -> [ResultMap?] in value.map { (value: Client?) -> ResultMap? in value.flatMap { (value: Client) -> ResultMap in value.resultMap } } }])
    }

    public var clients: [Client?]? {
      get {
        return (resultMap["clients"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Client?] in value.map { (value: ResultMap?) -> Client? in value.flatMap { (value: ResultMap) -> Client in Client(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Client?]) -> [ResultMap?] in value.map { (value: Client?) -> ResultMap? in value.flatMap { (value: Client) -> ResultMap in value.resultMap } } }, forKey: "clients")
      }
    }

    public struct Client: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Client"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String) {
        self.init(unsafeResultMap: ["__typename": "Client", "id": id, "name": name])
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

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class CreateClientMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateClient($input: ClientInput) {
      createClient(input: $input) {
        __typename
        id
        name
      }
    }
    """

  public let operationName: String = "CreateClient"

  public let operationIdentifier: String? = "bf5ca550808244ee1f3b081802c481bb3368d1eb49934642c367ed62c8919da7"

  public var input: ClientInput?

  public init(input: ClientInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createClient", arguments: ["input": GraphQLVariable("input")], type: .object(CreateClient.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createClient: CreateClient? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createClient": createClient.flatMap { (value: CreateClient) -> ResultMap in value.resultMap }])
    }

    public var createClient: CreateClient? {
      get {
        return (resultMap["createClient"] as? ResultMap).flatMap { CreateClient(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createClient")
      }
    }

    public struct CreateClient: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Client"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String) {
        self.init(unsafeResultMap: ["__typename": "Client", "id": id, "name": name])
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

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

public final class DeleteClientMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteClient($id: Int!) {
      deleteClient(id: $id)
    }
    """

  public let operationName: String = "DeleteClient"

  public let operationIdentifier: String? = "6dd2900572e91000c57541b967fe697e0b7d92b9abf0819e8463096ace0954a1"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteClient", arguments: ["id": GraphQLVariable("id")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteClient: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteClient": deleteClient])
    }

    public var deleteClient: String? {
      get {
        return resultMap["deleteClient"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "deleteClient")
      }
    }
  }
}

public final class DeleteEmployeeMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteEmployee($id: Int!) {
      deleteEmployee(id: $id)
    }
    """

  public let operationName: String = "DeleteEmployee"

  public let operationIdentifier: String? = "e650f8b09a676f50f054805da9320a7e470f79b15a3658774abec69fe2fdcaa9"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteEmployee", arguments: ["id": GraphQLVariable("id")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteEmployee: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteEmployee": deleteEmployee])
    }

    public var deleteEmployee: String? {
      get {
        return resultMap["deleteEmployee"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "deleteEmployee")
      }
    }
  }
}

public final class EmployeeQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Employee($id: Int!) {
      employee(id: $id) {
        __typename
        employee_name
        employee_code
        account {
          __typename
          firstname
          lastname
          email
        }
        role {
          __typename
          role_name
        }
      }
    }
    """

  public let operationName: String = "Employee"

  public let operationIdentifier: String? = "1d4724921e3778cb05f44e68dbf1f745160bca2b58a0f4f29ac422904fdd96b4"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("employee", arguments: ["id": GraphQLVariable("id")], type: .object(Employee.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(employee: Employee? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "employee": employee.flatMap { (value: Employee) -> ResultMap in value.resultMap }])
    }

    public var employee: Employee? {
      get {
        return (resultMap["employee"] as? ResultMap).flatMap { Employee(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "employee")
      }
    }

    public struct Employee: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Employee"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("employee_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("employee_code", type: .nonNull(.scalar(String.self))),
          GraphQLField("account", type: .nonNull(.object(Account.selections))),
          GraphQLField("role", type: .nonNull(.object(Role.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(employeeName: String, employeeCode: String, account: Account, role: Role) {
        self.init(unsafeResultMap: ["__typename": "Employee", "employee_name": employeeName, "employee_code": employeeCode, "account": account.resultMap, "role": role.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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

      public var employeeCode: String {
        get {
          return resultMap["employee_code"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "employee_code")
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
            GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
            GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(firstname: String, lastname: String, email: String) {
          self.init(unsafeResultMap: ["__typename": "UserAccount", "firstname": firstname, "lastname": lastname, "email": email])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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

        public var email: String {
          get {
            return resultMap["email"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }
      }

      public struct Role: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Role"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("role_name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(roleName: String) {
          self.init(unsafeResultMap: ["__typename": "Role", "role_name": roleName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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

public final class EmployeesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Employees {
      employees {
        __typename
        id
        employee_name
      }
    }
    """

  public let operationName: String = "Employees"

  public let operationIdentifier: String? = "27f8849fc7c9c61537a2145c0580d0278aaca0386ac393417bed0525e35a0e01"

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
          GraphQLField("employee_name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, employeeName: String) {
        self.init(unsafeResultMap: ["__typename": "Employee", "id": id, "employee_name": employeeName])
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

      public var employeeName: String {
        get {
          return resultMap["employee_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "employee_name")
        }
      }
    }
  }
}

public final class UpdateClientMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateClient($id: Int!, $input: ClientUpdateInput!) {
      updateClient(id: $id, input: $input)
    }
    """

  public let operationName: String = "UpdateClient"

  public let operationIdentifier: String? = "db28f1c8123316dad1f800c4225ccf13af7683a00e3663e484def672ac8ed715"

  public var id: Int
  public var input: ClientUpdateInput

  public init(id: Int, input: ClientUpdateInput) {
    self.id = id
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["id": id, "input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateClient", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateClient: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateClient": updateClient])
    }

    public var updateClient: String? {
      get {
        return resultMap["updateClient"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateClient")
      }
    }
  }
}
