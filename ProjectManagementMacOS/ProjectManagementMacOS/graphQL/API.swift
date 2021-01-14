// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct ProjectInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - projectName
  ///   - startDate
  ///   - endDate
  ///   - projectDescr
  ///   - budget
  ///   - employeeId
  ///   - clientId
  public init(projectName: String, startDate: String, endDate: String, projectDescr: String, budget: Int, employeeId: Int, clientId: Int) {
    graphQLMap = ["project_name": projectName, "start_date": startDate, "end_date": endDate, "project_descr": projectDescr, "budget": budget, "employee_id": employeeId, "client_id": clientId]
  }

  public var projectName: String {
    get {
      return graphQLMap["project_name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "project_name")
    }
  }

  public var startDate: String {
    get {
      return graphQLMap["start_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: String {
    get {
      return graphQLMap["end_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var projectDescr: String {
    get {
      return graphQLMap["project_descr"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "project_descr")
    }
  }

  public var budget: Int {
    get {
      return graphQLMap["budget"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "budget")
    }
  }

  public var employeeId: Int {
    get {
      return graphQLMap["employee_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_id")
    }
  }

  public var clientId: Int {
    get {
      return graphQLMap["client_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "client_id")
    }
  }
}

public struct TaskInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - taskName
  ///   - projectId
  ///   - priority
  ///   - description
  ///   - startDate
  ///   - endDate
  ///   - status
  ///   - employeeId
  public init(taskName: String, projectId: Int, priority: Int, description: String, startDate: String, endDate: String, status: String, employeeId: Int) {
    graphQLMap = ["task_name": taskName, "project_id": projectId, "priority": priority, "description": description, "start_date": startDate, "end_date": endDate, "status": status, "employee_id": employeeId]
  }

  public var taskName: String {
    get {
      return graphQLMap["task_name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "task_name")
    }
  }

  public var projectId: Int {
    get {
      return graphQLMap["project_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "project_id")
    }
  }

  public var priority: Int {
    get {
      return graphQLMap["priority"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "priority")
    }
  }

  public var description: String {
    get {
      return graphQLMap["description"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var startDate: String {
    get {
      return graphQLMap["start_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: String {
    get {
      return graphQLMap["end_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var status: String {
    get {
      return graphQLMap["status"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  public var employeeId: Int {
    get {
      return graphQLMap["employee_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_id")
    }
  }
}

public struct UserAccountInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - email
  ///   - firstname
  ///   - lastname
  public init(email: String, firstname: String, lastname: String) {
    graphQLMap = ["email": email, "firstname": firstname, "lastname": lastname]
  }

  public var email: String {
    get {
      return graphQLMap["email"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var firstname: String {
    get {
      return graphQLMap["firstname"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstname")
    }
  }

  public var lastname: String {
    get {
      return graphQLMap["lastname"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastname")
    }
  }
}

public struct ActivityInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - activityName
  ///   - taskId
  ///   - priority
  ///   - description
  ///   - startDate
  ///   - endDate
  ///   - status
  ///   - employeeId
  public init(activityName: String, taskId: Int, priority: Int, description: String, startDate: String, endDate: String, status: String, employeeId: Int) {
    graphQLMap = ["activity_name": activityName, "task_id": taskId, "priority": priority, "description": description, "start_date": startDate, "end_date": endDate, "status": status, "employee_id": employeeId]
  }

  public var activityName: String {
    get {
      return graphQLMap["activity_name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "activity_name")
    }
  }

  public var taskId: Int {
    get {
      return graphQLMap["task_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "task_id")
    }
  }

  public var priority: Int {
    get {
      return graphQLMap["priority"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "priority")
    }
  }

  public var description: String {
    get {
      return graphQLMap["description"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var startDate: String {
    get {
      return graphQLMap["start_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: String {
    get {
      return graphQLMap["end_date"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var status: String {
    get {
      return graphQLMap["status"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  public var employeeId: Int {
    get {
      return graphQLMap["employee_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_id")
    }
  }
}

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

public struct EmployeeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - employeeCode
  ///   - employeeName
  ///   - accountId
  ///   - roleId
  public init(employeeCode: String, employeeName: String, accountId: Int, roleId: Int) {
    graphQLMap = ["employee_code": employeeCode, "employee_name": employeeName, "account_id": accountId, "role_id": roleId]
  }

  public var employeeCode: String {
    get {
      return graphQLMap["employee_code"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_code")
    }
  }

  public var employeeName: String {
    get {
      return graphQLMap["employee_name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_name")
    }
  }

  public var accountId: Int {
    get {
      return graphQLMap["account_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id")
    }
  }

  public var roleId: Int {
    get {
      return graphQLMap["role_id"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "role_id")
    }
  }
}

public struct UserAccountUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - email
  ///   - firstname
  ///   - lastname
  public init(email: Swift.Optional<String?> = nil, firstname: Swift.Optional<String?> = nil, lastname: Swift.Optional<String?> = nil) {
    graphQLMap = ["email": email, "firstname": firstname, "lastname": lastname]
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var firstname: Swift.Optional<String?> {
    get {
      return graphQLMap["firstname"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstname")
    }
  }

  public var lastname: Swift.Optional<String?> {
    get {
      return graphQLMap["lastname"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastname")
    }
  }
}

public struct ActivityUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - activityName
  ///   - priority
  ///   - description
  ///   - startDate
  ///   - endDate
  ///   - status
  ///   - employeeId
  public init(activityName: Swift.Optional<String?> = nil, priority: Swift.Optional<Int?> = nil, description: Swift.Optional<String?> = nil, startDate: Swift.Optional<String?> = nil, endDate: Swift.Optional<String?> = nil, status: Swift.Optional<String?> = nil, employeeId: Swift.Optional<Int?> = nil) {
    graphQLMap = ["activity_name": activityName, "priority": priority, "description": description, "start_date": startDate, "end_date": endDate, "status": status, "employee_id": employeeId]
  }

  public var activityName: Swift.Optional<String?> {
    get {
      return graphQLMap["activity_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "activity_name")
    }
  }

  public var priority: Swift.Optional<Int?> {
    get {
      return graphQLMap["priority"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "priority")
    }
  }

  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var startDate: Swift.Optional<String?> {
    get {
      return graphQLMap["start_date"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: Swift.Optional<String?> {
    get {
      return graphQLMap["end_date"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var status: Swift.Optional<String?> {
    get {
      return graphQLMap["status"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  public var employeeId: Swift.Optional<Int?> {
    get {
      return graphQLMap["employee_id"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_id")
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

public struct EmployeeUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - employeeCode
  ///   - employeeName
  ///   - accountId
  ///   - roleId
  public init(employeeCode: Swift.Optional<String?> = nil, employeeName: Swift.Optional<String?> = nil, accountId: Swift.Optional<Int?> = nil, roleId: Swift.Optional<Int?> = nil) {
    graphQLMap = ["employee_code": employeeCode, "employee_name": employeeName, "account_id": accountId, "role_id": roleId]
  }

  public var employeeCode: Swift.Optional<String?> {
    get {
      return graphQLMap["employee_code"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_code")
    }
  }

  public var employeeName: Swift.Optional<String?> {
    get {
      return graphQLMap["employee_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_name")
    }
  }

  public var accountId: Swift.Optional<Int?> {
    get {
      return graphQLMap["account_id"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "account_id")
    }
  }

  public var roleId: Swift.Optional<Int?> {
    get {
      return graphQLMap["role_id"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "role_id")
    }
  }
}

public struct ProjectUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - projectName
  ///   - startDate
  ///   - endDate
  ///   - projectDescr
  ///   - budget
  ///   - employeeId
  ///   - clientId
  public init(projectName: Swift.Optional<String?> = nil, startDate: Swift.Optional<String?> = nil, endDate: Swift.Optional<String?> = nil, projectDescr: Swift.Optional<String?> = nil, budget: Swift.Optional<Int?> = nil, employeeId: Swift.Optional<Int?> = nil, clientId: Swift.Optional<Int?> = nil) {
    graphQLMap = ["project_name": projectName, "start_date": startDate, "end_date": endDate, "project_descr": projectDescr, "budget": budget, "employee_id": employeeId, "client_id": clientId]
  }

  public var projectName: Swift.Optional<String?> {
    get {
      return graphQLMap["project_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "project_name")
    }
  }

  public var startDate: Swift.Optional<String?> {
    get {
      return graphQLMap["start_date"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: Swift.Optional<String?> {
    get {
      return graphQLMap["end_date"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var projectDescr: Swift.Optional<String?> {
    get {
      return graphQLMap["project_descr"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "project_descr")
    }
  }

  public var budget: Swift.Optional<Int?> {
    get {
      return graphQLMap["budget"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "budget")
    }
  }

  public var employeeId: Swift.Optional<Int?> {
    get {
      return graphQLMap["employee_id"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_id")
    }
  }

  public var clientId: Swift.Optional<Int?> {
    get {
      return graphQLMap["client_id"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "client_id")
    }
  }
}

public struct TaskUpdateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - taskName
  ///   - priority
  ///   - description
  ///   - startDate
  ///   - endDate
  ///   - status
  ///   - employeeId
  public init(taskName: Swift.Optional<String?> = nil, priority: Swift.Optional<Int?> = nil, description: Swift.Optional<String?> = nil, startDate: Swift.Optional<String?> = nil, endDate: Swift.Optional<String?> = nil, status: String, employeeId: Swift.Optional<Int?> = nil) {
    graphQLMap = ["task_name": taskName, "priority": priority, "description": description, "start_date": startDate, "end_date": endDate, "status": status, "employee_id": employeeId]
  }

  public var taskName: Swift.Optional<String?> {
    get {
      return graphQLMap["task_name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "task_name")
    }
  }

  public var priority: Swift.Optional<Int?> {
    get {
      return graphQLMap["priority"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "priority")
    }
  }

  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var startDate: Swift.Optional<String?> {
    get {
      return graphQLMap["start_date"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_date")
    }
  }

  public var endDate: Swift.Optional<String?> {
    get {
      return graphQLMap["end_date"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_date")
    }
  }

  public var status: String {
    get {
      return graphQLMap["status"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  public var employeeId: Swift.Optional<Int?> {
    get {
      return graphQLMap["employee_id"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "employee_id")
    }
  }
}

public final class ActivityQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Activity($id: Int!) {
      activity(id: $id) {
        __typename
        id
        activity_name
        description
        start_date
        end_date
        priority
        status
        assigned {
          __typename
          id
          employee_name
          role {
            __typename
            id
            role_name
          }
        }
      }
    }
    """

  public let operationName: String = "Activity"

  public let operationIdentifier: String? = "a456a29bc70d9b26e52ee18b9ff85c9b9671a5b8c4955e35a46f93ad6a9c513e"

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
        GraphQLField("activity", arguments: ["id": GraphQLVariable("id")], type: .object(Activity.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(activity: Activity? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "activity": activity.flatMap { (value: Activity) -> ResultMap in value.resultMap }])
    }

    public var activity: Activity? {
      get {
        return (resultMap["activity"] as? ResultMap).flatMap { Activity(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "activity")
      }
    }

    public struct Activity: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Activity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("activity_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("priority", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .nonNull(.scalar(String.self))),
          GraphQLField("assigned", type: .nonNull(.object(Assigned.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, activityName: String, description: String, startDate: String, endDate: String, priority: Int, status: String, assigned: Assigned) {
        self.init(unsafeResultMap: ["__typename": "Activity", "id": id, "activity_name": activityName, "description": description, "start_date": startDate, "end_date": endDate, "priority": priority, "status": status, "assigned": assigned.resultMap])
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

      public var activityName: String {
        get {
          return resultMap["activity_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "activity_name")
        }
      }

      public var description: String {
        get {
          return resultMap["description"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var startDate: String {
        get {
          return resultMap["start_date"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return resultMap["end_date"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "end_date")
        }
      }

      public var priority: Int {
        get {
          return resultMap["priority"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "priority")
        }
      }

      public var status: String {
        get {
          return resultMap["status"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var assigned: Assigned {
        get {
          return Assigned(unsafeResultMap: resultMap["assigned"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "assigned")
        }
      }

      public struct Assigned: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Employee"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("employee_name", type: .nonNull(.scalar(String.self))),
            GraphQLField("role", type: .nonNull(.object(Role.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, employeeName: String, role: Role) {
          self.init(unsafeResultMap: ["__typename": "Employee", "id": id, "employee_name": employeeName, "role": role.resultMap])
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

        public var role: Role {
          get {
            return Role(unsafeResultMap: resultMap["role"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "role")
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
}

public final class CreateProjectMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateProject($input: ProjectInput!) {
      createProject(input: $input) {
        __typename
        id
        project_name
      }
    }
    """

  public let operationName: String = "CreateProject"

  public let operationIdentifier: String? = "026c8292fa282a2b9c3d7d5cca90897e086a175dcd866aebadfcf5229a5c38a3"

  public var input: ProjectInput

  public init(input: ProjectInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createProject", arguments: ["input": GraphQLVariable("input")], type: .object(CreateProject.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createProject: CreateProject? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createProject": createProject.flatMap { (value: CreateProject) -> ResultMap in value.resultMap }])
    }

    public var createProject: CreateProject? {
      get {
        return (resultMap["createProject"] as? ResultMap).flatMap { CreateProject(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createProject")
      }
    }

    public struct CreateProject: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Project"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("project_name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, projectName: String) {
        self.init(unsafeResultMap: ["__typename": "Project", "id": id, "project_name": projectName])
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

      public var projectName: String {
        get {
          return resultMap["project_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "project_name")
        }
      }
    }
  }
}

public final class CreateTaskMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateTask($input: TaskInput!) {
      createTask(input: $input) {
        __typename
        id
        task_name
        status
      }
    }
    """

  public let operationName: String = "CreateTask"

  public let operationIdentifier: String? = "f586daf96df950ee59940376ad5690d5fd17ad14d41d367ed159989d7404ef2b"

  public var input: TaskInput

  public init(input: TaskInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createTask", arguments: ["input": GraphQLVariable("input")], type: .object(CreateTask.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createTask: CreateTask? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createTask": createTask.flatMap { (value: CreateTask) -> ResultMap in value.resultMap }])
    }

    public var createTask: CreateTask? {
      get {
        return (resultMap["createTask"] as? ResultMap).flatMap { CreateTask(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createTask")
      }
    }

    public struct CreateTask: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Task"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("task_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, taskName: String, status: String) {
        self.init(unsafeResultMap: ["__typename": "Task", "id": id, "task_name": taskName, "status": status])
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

      public var taskName: String {
        get {
          return resultMap["task_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "task_name")
        }
      }

      public var status: String {
        get {
          return resultMap["status"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }
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

public final class CreateAccountMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateAccount($input: UserAccountInput!) {
      createUserAccount(input: $input) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "CreateAccount"

  public let operationIdentifier: String? = "ccda083cacc80f4d3fc99a56fd62d75ef66b501d17393a458faaea25c48d4649"

  public var input: UserAccountInput

  public init(input: UserAccountInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createUserAccount", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUserAccount.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createUserAccount: CreateUserAccount? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createUserAccount": createUserAccount.flatMap { (value: CreateUserAccount) -> ResultMap in value.resultMap }])
    }

    public var createUserAccount: CreateUserAccount? {
      get {
        return (resultMap["createUserAccount"] as? ResultMap).flatMap { CreateUserAccount(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createUserAccount")
      }
    }

    public struct CreateUserAccount: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserAccount"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int) {
        self.init(unsafeResultMap: ["__typename": "UserAccount", "id": id])
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
    }
  }
}

public final class CreateActivityMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateActivity($input: ActivityInput!) {
      createActivity(input: $input) {
        __typename
        id
        activity_name
        status
      }
    }
    """

  public let operationName: String = "CreateActivity"

  public let operationIdentifier: String? = "c4a4d0b24d9de81c1b4a4966093d59aae6430bb0b2438e6dcf9a9904e1098504"

  public var input: ActivityInput

  public init(input: ActivityInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createActivity", arguments: ["input": GraphQLVariable("input")], type: .object(CreateActivity.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createActivity: CreateActivity? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createActivity": createActivity.flatMap { (value: CreateActivity) -> ResultMap in value.resultMap }])
    }

    public var createActivity: CreateActivity? {
      get {
        return (resultMap["createActivity"] as? ResultMap).flatMap { CreateActivity(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createActivity")
      }
    }

    public struct CreateActivity: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Activity"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("activity_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, activityName: String, status: String) {
        self.init(unsafeResultMap: ["__typename": "Activity", "id": id, "activity_name": activityName, "status": status])
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

      public var activityName: String {
        get {
          return resultMap["activity_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "activity_name")
        }
      }

      public var status: String {
        get {
          return resultMap["status"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
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

public final class CreateEmployeeMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateEmployee($input: EmployeeInput!) {
      createEmployee(input: $input) {
        __typename
        id
        employee_name
        employee_code
        account {
          __typename
          id
          firstname
          lastname
          email
        }
        role {
          __typename
          id
          role_name
        }
      }
    }
    """

  public let operationName: String = "CreateEmployee"

  public let operationIdentifier: String? = "555e0bb5696801abed52acbf63a0ef467775c524a967b15cb86a19da04210dc6"

  public var input: EmployeeInput

  public init(input: EmployeeInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createEmployee", arguments: ["input": GraphQLVariable("input")], type: .object(CreateEmployee.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createEmployee: CreateEmployee? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createEmployee": createEmployee.flatMap { (value: CreateEmployee) -> ResultMap in value.resultMap }])
    }

    public var createEmployee: CreateEmployee? {
      get {
        return (resultMap["createEmployee"] as? ResultMap).flatMap { CreateEmployee(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createEmployee")
      }
    }

    public struct CreateEmployee: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Employee"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
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

      public init(id: Int, employeeName: String, employeeCode: String, account: Account, role: Role) {
        self.init(unsafeResultMap: ["__typename": "Employee", "id": id, "employee_name": employeeName, "employee_code": employeeCode, "account": account.resultMap, "role": role.resultMap])
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
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
            GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, firstname: String, lastname: String, email: String) {
          self.init(unsafeResultMap: ["__typename": "UserAccount", "id": id, "firstname": firstname, "lastname": lastname, "email": email])
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

public final class DeleteActivityMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteActivity($id: Int!) {
      deleteActivity(id: $id)
    }
    """

  public let operationName: String = "DeleteActivity"

  public let operationIdentifier: String? = "02884e1abd1be53d8980beeb227ddabea3bbba068e340e6c55aa11bb5e6ac198"

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
        GraphQLField("deleteActivity", arguments: ["id": GraphQLVariable("id")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteActivity: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteActivity": deleteActivity])
    }

    public var deleteActivity: String? {
      get {
        return resultMap["deleteActivity"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "deleteActivity")
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

public final class DeleteProjectMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteProject($id: Int!) {
      deleteProject(id: $id)
    }
    """

  public let operationName: String = "DeleteProject"

  public let operationIdentifier: String? = "59eaf3ef3659f17bb692cdd9f69d02a46d3895155c42e2e80269df7bd66950de"

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
        GraphQLField("deleteProject", arguments: ["id": GraphQLVariable("id")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteProject: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteProject": deleteProject])
    }

    public var deleteProject: String? {
      get {
        return resultMap["deleteProject"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "deleteProject")
      }
    }
  }
}

public final class DeleteTaskMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteTask($id: Int!) {
      deleteTask(id: $id)
    }
    """

  public let operationName: String = "DeleteTask"

  public let operationIdentifier: String? = "c84cb15b078b38148e70eaae317aee8cfe20e819f1d35cca0d64989fe67f060d"

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
        GraphQLField("deleteTask", arguments: ["id": GraphQLVariable("id")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteTask: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteTask": deleteTask])
    }

    public var deleteTask: String? {
      get {
        return resultMap["deleteTask"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "deleteTask")
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
          id
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

  public let operationIdentifier: String? = "0d8e8677adabf9dd91f29d64868210ad71986cda717285e6b47dd37ebf5e308c"

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
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
            GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, firstname: String, lastname: String, email: String) {
          self.init(unsafeResultMap: ["__typename": "UserAccount", "id": id, "firstname": firstname, "lastname": lastname, "email": email])
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
        role {
          __typename
          id
          role_name
        }
      }
    }
    """

  public let operationName: String = "Employees"

  public let operationIdentifier: String? = "9f378110fa9d528771c475bde853e5a54dbf813675b101f818e397f460776142"

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
          GraphQLField("role", type: .nonNull(.object(Role.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, employeeName: String, role: Role) {
        self.init(unsafeResultMap: ["__typename": "Employee", "id": id, "employee_name": employeeName, "role": role.resultMap])
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

      public var role: Role {
        get {
          return Role(unsafeResultMap: resultMap["role"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "role")
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

public final class ProjectQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Project($id: Int!) {
      project(id: $id) {
        __typename
        id
        project_name
        project_descr
        start_date
        end_date
        budget
        manager {
          __typename
          id
          employee_name
          role {
            __typename
            id
            role_name
          }
        }
        client {
          __typename
          id
          name
        }
        tasks {
          __typename
          id
          task_name
          status
        }
      }
    }
    """

  public let operationName: String = "Project"

  public let operationIdentifier: String? = "5b384db5aaf73b4bfee60ae205ec25522689782cf93403a317513a9edae35b3f"

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
        GraphQLField("project", arguments: ["id": GraphQLVariable("id")], type: .object(Project.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(project: Project? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "project": project.flatMap { (value: Project) -> ResultMap in value.resultMap }])
    }

    public var project: Project? {
      get {
        return (resultMap["project"] as? ResultMap).flatMap { Project(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "project")
      }
    }

    public struct Project: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Project"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("project_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("project_descr", type: .nonNull(.scalar(String.self))),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("budget", type: .nonNull(.scalar(Int.self))),
          GraphQLField("manager", type: .nonNull(.object(Manager.selections))),
          GraphQLField("client", type: .nonNull(.object(Client.selections))),
          GraphQLField("tasks", type: .nonNull(.list(.object(Task.selections)))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, projectName: String, projectDescr: String, startDate: String, endDate: String, budget: Int, manager: Manager, client: Client, tasks: [Task?]) {
        self.init(unsafeResultMap: ["__typename": "Project", "id": id, "project_name": projectName, "project_descr": projectDescr, "start_date": startDate, "end_date": endDate, "budget": budget, "manager": manager.resultMap, "client": client.resultMap, "tasks": tasks.map { (value: Task?) -> ResultMap? in value.flatMap { (value: Task) -> ResultMap in value.resultMap } }])
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

      public var projectName: String {
        get {
          return resultMap["project_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "project_name")
        }
      }

      public var projectDescr: String {
        get {
          return resultMap["project_descr"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "project_descr")
        }
      }

      public var startDate: String {
        get {
          return resultMap["start_date"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return resultMap["end_date"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "end_date")
        }
      }

      public var budget: Int {
        get {
          return resultMap["budget"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "budget")
        }
      }

      public var manager: Manager {
        get {
          return Manager(unsafeResultMap: resultMap["manager"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "manager")
        }
      }

      public var client: Client {
        get {
          return Client(unsafeResultMap: resultMap["client"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "client")
        }
      }

      public var tasks: [Task?] {
        get {
          return (resultMap["tasks"] as! [ResultMap?]).map { (value: ResultMap?) -> Task? in value.flatMap { (value: ResultMap) -> Task in Task(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Task?) -> ResultMap? in value.flatMap { (value: Task) -> ResultMap in value.resultMap } }, forKey: "tasks")
        }
      }

      public struct Manager: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Employee"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("employee_name", type: .nonNull(.scalar(String.self))),
            GraphQLField("role", type: .nonNull(.object(Role.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, employeeName: String, role: Role) {
          self.init(unsafeResultMap: ["__typename": "Employee", "id": id, "employee_name": employeeName, "role": role.resultMap])
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

        public var role: Role {
          get {
            return Role(unsafeResultMap: resultMap["role"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "role")
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

      public struct Task: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Task"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("task_name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, taskName: String, status: String) {
          self.init(unsafeResultMap: ["__typename": "Task", "id": id, "task_name": taskName, "status": status])
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

        public var taskName: String {
          get {
            return resultMap["task_name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "task_name")
          }
        }

        public var status: String {
          get {
            return resultMap["status"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }
      }
    }
  }
}

public final class ProjectsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Projects {
      projects {
        __typename
        id
        project_name
      }
    }
    """

  public let operationName: String = "Projects"

  public let operationIdentifier: String? = "6e091edd4e7ab317fcbfcb1f81d0a60c51ae2fcaedbc3c0e5a6646a70c6849ec"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("projects", type: .list(.object(Project.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(projects: [Project?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "projects": projects.flatMap { (value: [Project?]) -> [ResultMap?] in value.map { (value: Project?) -> ResultMap? in value.flatMap { (value: Project) -> ResultMap in value.resultMap } } }])
    }

    public var projects: [Project?]? {
      get {
        return (resultMap["projects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Project?] in value.map { (value: ResultMap?) -> Project? in value.flatMap { (value: ResultMap) -> Project in Project(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Project?]) -> [ResultMap?] in value.map { (value: Project?) -> ResultMap? in value.flatMap { (value: Project) -> ResultMap in value.resultMap } } }, forKey: "projects")
      }
    }

    public struct Project: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Project"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("project_name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, projectName: String) {
        self.init(unsafeResultMap: ["__typename": "Project", "id": id, "project_name": projectName])
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

      public var projectName: String {
        get {
          return resultMap["project_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "project_name")
        }
      }
    }
  }
}

public final class RolesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Roles {
      roles {
        __typename
        id
        role_name
      }
    }
    """

  public let operationName: String = "Roles"

  public let operationIdentifier: String? = "1ccdfd49c3c6762bcd7c02b3f4ee05f6b17392ab6d4f31b0192c25df3126af6b"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("roles", type: .list(.object(Role.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(roles: [Role?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "roles": roles.flatMap { (value: [Role?]) -> [ResultMap?] in value.map { (value: Role?) -> ResultMap? in value.flatMap { (value: Role) -> ResultMap in value.resultMap } } }])
    }

    public var roles: [Role?]? {
      get {
        return (resultMap["roles"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Role?] in value.map { (value: ResultMap?) -> Role? in value.flatMap { (value: ResultMap) -> Role in Role(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Role?]) -> [ResultMap?] in value.map { (value: Role?) -> ResultMap? in value.flatMap { (value: Role) -> ResultMap in value.resultMap } } }, forKey: "roles")
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

public final class TaskQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Task($id: Int!) {
      task(id: $id) {
        __typename
        id
        task_name
        description
        start_date
        end_date
        priority
        status
        assigned {
          __typename
          id
          employee_name
          role {
            __typename
            id
            role_name
          }
        }
        activities {
          __typename
          id
          activity_name
          status
        }
      }
    }
    """

  public let operationName: String = "Task"

  public let operationIdentifier: String? = "71179954ea5c2d8b1916b3ef7142320ad7e6ac24545b8697671113aca69dc4fb"

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
        GraphQLField("task", arguments: ["id": GraphQLVariable("id")], type: .object(Task.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(task: Task? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "task": task.flatMap { (value: Task) -> ResultMap in value.resultMap }])
    }

    public var task: Task? {
      get {
        return (resultMap["task"] as? ResultMap).flatMap { Task(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "task")
      }
    }

    public struct Task: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Task"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("task_name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("start_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("end_date", type: .nonNull(.scalar(String.self))),
          GraphQLField("priority", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .nonNull(.scalar(String.self))),
          GraphQLField("assigned", type: .nonNull(.object(Assigned.selections))),
          GraphQLField("activities", type: .nonNull(.list(.object(Activity.selections)))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, taskName: String, description: String, startDate: String, endDate: String, priority: Int, status: String, assigned: Assigned, activities: [Activity?]) {
        self.init(unsafeResultMap: ["__typename": "Task", "id": id, "task_name": taskName, "description": description, "start_date": startDate, "end_date": endDate, "priority": priority, "status": status, "assigned": assigned.resultMap, "activities": activities.map { (value: Activity?) -> ResultMap? in value.flatMap { (value: Activity) -> ResultMap in value.resultMap } }])
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

      public var taskName: String {
        get {
          return resultMap["task_name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "task_name")
        }
      }

      public var description: String {
        get {
          return resultMap["description"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var startDate: String {
        get {
          return resultMap["start_date"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "start_date")
        }
      }

      public var endDate: String {
        get {
          return resultMap["end_date"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "end_date")
        }
      }

      public var priority: Int {
        get {
          return resultMap["priority"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "priority")
        }
      }

      public var status: String {
        get {
          return resultMap["status"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var assigned: Assigned {
        get {
          return Assigned(unsafeResultMap: resultMap["assigned"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "assigned")
        }
      }

      public var activities: [Activity?] {
        get {
          return (resultMap["activities"] as! [ResultMap?]).map { (value: ResultMap?) -> Activity? in value.flatMap { (value: ResultMap) -> Activity in Activity(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Activity?) -> ResultMap? in value.flatMap { (value: Activity) -> ResultMap in value.resultMap } }, forKey: "activities")
        }
      }

      public struct Assigned: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Employee"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("employee_name", type: .nonNull(.scalar(String.self))),
            GraphQLField("role", type: .nonNull(.object(Role.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, employeeName: String, role: Role) {
          self.init(unsafeResultMap: ["__typename": "Employee", "id": id, "employee_name": employeeName, "role": role.resultMap])
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

        public var role: Role {
          get {
            return Role(unsafeResultMap: resultMap["role"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "role")
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

      public struct Activity: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Activity"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("activity_name", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, activityName: String, status: String) {
          self.init(unsafeResultMap: ["__typename": "Activity", "id": id, "activity_name": activityName, "status": status])
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

        public var activityName: String {
          get {
            return resultMap["activity_name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "activity_name")
          }
        }

        public var status: String {
          get {
            return resultMap["status"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }
      }
    }
  }
}

public final class UpdateAccountMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateAccount($id: Int!, $input: UserAccountUpdateInput!) {
      updateUserAccount(id: $id, input: $input)
    }
    """

  public let operationName: String = "UpdateAccount"

  public let operationIdentifier: String? = "7be429dc5c172605f139a781579092aa6e6a499e2ea9cb60e9d9b46c1641070e"

  public var id: Int
  public var input: UserAccountUpdateInput

  public init(id: Int, input: UserAccountUpdateInput) {
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
        GraphQLField("updateUserAccount", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateUserAccount: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateUserAccount": updateUserAccount])
    }

    public var updateUserAccount: String? {
      get {
        return resultMap["updateUserAccount"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateUserAccount")
      }
    }
  }
}

public final class UpdateActivityMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateActivity($id: Int!, $input: ActivityUpdateInput!) {
      updateActivity(id: $id, input: $input)
    }
    """

  public let operationName: String = "UpdateActivity"

  public let operationIdentifier: String? = "36586b7f74782acd30de1703c7f38b96ddfb95fb7432a2223c321aba445d7df9"

  public var id: Int
  public var input: ActivityUpdateInput

  public init(id: Int, input: ActivityUpdateInput) {
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
        GraphQLField("updateActivity", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateActivity: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateActivity": updateActivity])
    }

    public var updateActivity: String? {
      get {
        return resultMap["updateActivity"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateActivity")
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

public final class UpdateEmployeeMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateEmployee($id: Int!, $input: EmployeeUpdateInput!) {
      updateEmployee(id: $id, input: $input)
    }
    """

  public let operationName: String = "UpdateEmployee"

  public let operationIdentifier: String? = "814c2eed994c800da4cbdb3347fcca0e9d4babf34a672f7a2e3bac29f214a1ba"

  public var id: Int
  public var input: EmployeeUpdateInput

  public init(id: Int, input: EmployeeUpdateInput) {
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
        GraphQLField("updateEmployee", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateEmployee: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateEmployee": updateEmployee])
    }

    public var updateEmployee: String? {
      get {
        return resultMap["updateEmployee"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateEmployee")
      }
    }
  }
}

public final class UpdateProjectMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateProject($id: Int!, $input: ProjectUpdateInput!) {
      updateProject(id: $id, input: $input)
    }
    """

  public let operationName: String = "UpdateProject"

  public let operationIdentifier: String? = "9bd9d1342c315e287eb102de89ea090a169ff5e67b29e05bf916e53d61709b65"

  public var id: Int
  public var input: ProjectUpdateInput

  public init(id: Int, input: ProjectUpdateInput) {
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
        GraphQLField("updateProject", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateProject: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateProject": updateProject])
    }

    public var updateProject: String? {
      get {
        return resultMap["updateProject"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateProject")
      }
    }
  }
}

public final class UpdateTaskMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateTask($id: Int!, $input: TaskUpdateInput!) {
      updateTask(id: $id, input: $input)
    }
    """

  public let operationName: String = "UpdateTask"

  public let operationIdentifier: String? = "cc12fb8cc7865a7450e7a1ce0fdcccb432a6bab757c585587347a04cdc1a59a2"

  public var id: Int
  public var input: TaskUpdateInput

  public init(id: Int, input: TaskUpdateInput) {
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
        GraphQLField("updateTask", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateTask: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateTask": updateTask])
    }

    public var updateTask: String? {
      get {
        return resultMap["updateTask"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "updateTask")
      }
    }
  }
}
