const { ApolloServer, gql } = require('apollo-server');
const util = require('util');
const { GraphQLError } = require('graphql');


// A schema is a collection of type definitions (hence "typeDefs")
// that together define the "shape" of queries that are executed against
// your data.
const typeDefs = gql`

  # Comments in GraphQL strings (such as this one) start with the hash (#) symbol.

  # Models

  #Projects
  type Project {
     id: Int!
     project_name: String!
     start_date: String!
     end_date: String!
     project_descr: String!
     budget: Int!
     manager: Employee!
     client: Client!
     tasks: [Task]!
   }

  type Task {
    id: Int!
    task_name: String!
    project_id: Int!
    priority: Int!
    description: String!
    start_date: String!
    end_date: String!
    status: String!
    activities: [Activity]!
    assigned: Employee!
  }

  type Activity {
    id: Int!
    activity_name: String!
    task_id: Int!
    priority: Int!
    description: String!
    start_date: String!
    end_date: String!
    status: String!
    assigned: Employee!
  }

   type Client {
    id: Int!
    name: String!
    address: String!
    details: String!
    email: String!  
   }

  type Employee {
    id: Int!
    employee_code: String!
    employee_name: String!
    account: UserAccount!
    role: Role!
  }

  type UserAccount {
    id: Int!
    email: String!
    firstname: String!
    lastname: String!
  }

  type Role {
    id: Int!
    role_name: String!
  }

  # Queries
  type Query {
    employees: [Employee]
    employee(id: Int): Employee
    
    projects: [Project]
    project(id: Int): Project

    task(id: Int): Task
    activity(id: Int): Activity

    clients: [Client]
    client(id: Int!): Client

    roles: [Role]
  }

  # Mutations
  
  input ProjectInput{

    project_name: String!
     start_date: String!
     end_date: String!
     project_descr: String!
     budget: Int!
     employee_id: Int!
     client_id: Int!
    
  }

  input ProjectUpdateInput{

     project_name: String
     start_date: String
     end_date: String
     project_descr: String
     budget: Int
     employee_id: Int
     client_id: Int
  }

  input TaskInput{
    task_name: String!
    project_id: Int!
    priority: Int!
    description: String!
    start_date: String!
    end_date: String!
    status: String!
    employee_id: Int!
  }

  input TaskUpdateInput{
    task_name: String
    priority: Int
    description: String
    start_date: String
    end_date: String
    status: String!
    employee_id: Int
  }

  input ActivityInput{
    activity_name: String!
    task_id: Int!
    priority: Int!
    description: String!
    start_date: String!
    end_date: String!
    status: String!
    employee_id: Int!
  }

  input ActivityUpdateInput{
    activity_name: String
    priority: Int
    description: String
    start_date: String
    end_date: String
    status: String
    employee_id: Int
  }

  input ClientInput {
    name: String!
    address: String!
    details: String!
    email: String!
  }

  input ClientUpdateInput {
    name: String
    address: String
    details: String
    email: String
  }

  input EmployeeInput {
    employee_code: String!
    employee_name: String!
    account_id: Int!
    role_id: Int!
  }

  input EmployeeUpdateInput {
    employee_code: String
    employee_name: String
    account_id: Int
    role_id: Int
  }

  input UserAccountInput {
    email: String!
    firstname: String!
    lastname: String!
  }

  input UserAccountUpdateInput {
    email: String
    firstname: String
    lastname: String
  }

  input RoleInput {
    role_name: String!
  }

  type Mutation {

    createProject(input: ProjectInput): Project
    deleteProject(id: Int!): String
    updateProject(id: Int!, input: ProjectUpdateInput): String

    createTask(input: TaskInput): Task
    deleteTask(id: Int!): String
    updateTask(id: Int!, input: TaskUpdateInput): String

    createActivity(input: ActivityInput): Activity
    deleteActivity(id: Int!): String
    updateActivity(id: Int!, input: ActivityUpdateInput): String

    createClient(input: ClientInput): Client
    deleteClient(id: Int!): String
    updateClient(id: Int!, input: ClientUpdateInput!): String

    createEmployee(input: EmployeeInput): Employee
    deleteEmployee(id: Int!): String
    updateEmployee(id: Int, input: EmployeeUpdateInput): String

    createUserAccount(input: UserAccountInput): UserAccount
    deleteUserAccount(id:Int!): String
    updateUserAccount(id: Int, input: UserAccountUpdateInput): String

    createRole(input: RoleInput): Role
    deleteRole(id:Int!): String
    updateRole(id: Int, input: RoleInput): String
  }
`;

// ------------------ MySql connection  --------------------- //

const mysql = require('mysql');
const client = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'users'
});

const host = 'http://localhost:3000'

const Paths = {"Employees":"employees", "UserAccount":"user_account", "Roles":"roles"}
Object.freeze(Paths)

function Request(path) {
  return {
    uri: host + "/" + path,
    json: true
  }
}

function PostRequest(path) {
  return (body) => {
    return {
      uri: Request(path).uri,
      method: "POST",
      body: body,
      json: true
    }
  }
}

function PutRequest(path) {
  return (id, body) => {
    return {
      uri: Request(path).uri+ "/" + id,
      method: "PATCH",
      body: body,
      json: true
    }
  }
}

function RequestByQuery(path, queryName) {
  return (query) => {
    return {
      uri: Request(path).uri + "?" + queryName + "=" + query,
      json: true
    }
  }
}

function RequestById(path, method) {
  return (id) => {
    return {
      uri: Request(path).uri + "/" + id,
      method: method,
      json: true
    }
  }
}

function ToSqlUpdateValues (input)
{
  var setFields = []
        for (let [key, value] of Object.entries(input)) {
          setFields.push(`${key}='${value}'`)
        }
  return setFields.join(",")
}

const request = require("request-promise");
const employee_request = Request(Paths.Employees)
const employee_by_id_request = RequestById(Paths.Employees, "GET")
const employee_delete_request = RequestById(Paths.Employees, "DELETE")
const employee_create_request = PostRequest(Paths.Employees)
const employee_update_request = PutRequest(Paths.Employees)

const roles_request = Request(Paths.Roles)
const roles_by_id_request = RequestById(Paths.Roles, "GET")
const roles_delete_request = RequestById(Paths.Roles, "DELETE")
const roles_create_request = PostRequest(Paths.Roles)
const roles_update_request = PutRequest(Paths.Roles)


const userAccount_request = Request(Paths.UserAccount)
const userAccount_by_id_request = RequestById(Paths.UserAccount, "GET")
const userAccount_delete_request = RequestById(Paths.UserAccount, "DELETE")
const userAccount_create_request = PostRequest(Paths.UserAccount)
const userAccount_update_request = PutRequest(Paths.UserAccount)


const query = util.promisify(client.query).bind(client);

// ------------------ Resolvers  --------------------- //

const resolvers = {
    Query: {
        employees: async () => {
           return await request(employee_request)
        },
        employee: async (parent, {id}) => {
          return await request(employee_by_id_request(id))
        },
       
        projects: async (parent, args, context, info) => {
           return await query(`SELECT * FROM projects.project`)
        },
        project: async (parent, args, context, info) => {
          return (await query(`SELECT * FROM projects.project WHERE id = ${args.id}`))[0]
        },
        task: async (parent, args, context, info) => {
          return (await query(`SELECT * FROM tasks.task WHERE id = ${args.id}`))[0]
        },
        activity: async (parent, args, context, info) => {
          return (await query(`SELECT * FROM tasks.activity WHERE id = ${args.id}`))[0]
        },
        clients: async (parent, args, context, info) => {
          return await query(`SELECT * FROM projects.client`)
        },
        client: async (parent, {id}, context, info) => {
          return (await query(`SELECT * FROM projects.client WHERE id = ${id}`))[0]
        },
        roles: async () => {
          return await request(roles_request)
        }
    },

    Mutation: {

      createProject: async (parent, {input}, context, info) => {
        await query(`INSERT INTO projects.project (project_name, start_date, end_date, project_descr,employee_id, budget, client_id) VALUES ('${input.project_name}', '${input.start_date}', '${input.end_date}', '${input.project_descr}','${input.employee_id}','${input.budget}','${input.client_id}')`)
        var result = await query(`SELECT * FROM projects.project ORDER BY id DESC LIMIT 1`)
        return result[0]
      },

      deleteProject: async (parent, {id}, context, info) => {
        await query(`DELETE FROM projects.project WHERE id=${id}`)
        return "Success"
      },

      updateProject: async (parent, {id, input}, context, info) => {
        await query(`UPDATE projects.project SET ${ToSqlUpdateValues(input)} WHERE id=${id}`)
        return "Success"
      },

      createTask: async (parent, {input}, context, info) => {
        await query(`INSERT INTO tasks.task (task_name, priority, description, start_date, end_date,employee_id, project_id, status) VALUES ('${input.task_name}', '${input.priority}','${input.description}','${input.start_date}', '${input.end_date}','${input.employee_id}','${input.project_id}', '${input.status}')`)
        return (await query(`SELECT * FROM tasks.task ORDER BY id DESC LIMIT 1`))[0]
      },
      deleteTask: async (parent, {id}, context, info) => {
        await query(`DELETE FROM tasks.task WHERE id=${id}`)
        return "Success"
      },

      updateTask: async (parent, {id, input}, context, info) => {
        await query(`UPDATE tasks.task SET ${ToSqlUpdateValues(input)} WHERE id=${id}`)
        return "Success"
      },

      createActivity: async (parent, {input}, context, info) => {
        await query(`INSERT INTO tasks.activity (activity_name, task_id, priority, description, start_date, end_date, status ,employee_id) 
                                         VALUES ('${input.activity_name}','${input.task_id}', '${input.priority}','${input.description}','${input.start_date}', '${input.end_date}', '${input.status}','${input.employee_id}')`)
        return (await query(`SELECT * FROM tasks.activity ORDER BY id DESC LIMIT 1`))[0]
      },
      deleteActivity: async (parent, {id}, context, info) => {
        await query(`DELETE FROM tasks.activity WHERE id=${id}`)
        return "Success"
      },

      updateActivity: async (parent, {id, input}, context, info) => {
        await query(`UPDATE tasks.activity SET ${ToSqlUpdateValues(input)} WHERE id=${id}`)
        return "Success"
      },

      createClient: async (parent, {input}, context, info) => {
        await query(`INSERT INTO projects.client (name, address, details, email) VALUES ('${input.name}', '${input.address}', '${input.details}', '${input.email}')`)
        var result = await query(`SELECT * FROM projects.client ORDER BY id DESC LIMIT 1`)
        return result[0]
      },

      deleteClient: async (parent, {id}, context, info) => {
        await query(`DELETE FROM projects.client WHERE id=${id}`)
        return "success"
      },
      
      updateClient: async (parent, {id, input}, context, info) => {
        await query(`UPDATE projects.client SET ${ToSqlUpdateValues(input)} WHERE id=${id}`)
        return "Success"
      },

      deleteEmployee: async (parent, {id}, context, info) => {
        await request(employee_delete_request(id))
        return "success"
      },

      createEmployee: async (parent, {input}, context, info) => {
        return await request(employee_create_request(input))
      },

      updateEmployee: async (parent, {id, input}, context, info) => {
        await request(employee_update_request(id, input))
        return "Success"
      },

      deleteUserAccount: async (parent, {id}, context, info) => {
        var result = await request(userAccount_delete_request(id))
        return "success"
      },

      createUserAccount: async (parent, {input}, context, info) => {
        return await request(userAccount_create_request(input))
      },

      updateUserAccount: async (parent, {id, input}, context, info) => {
        await request(userAccount_update_request(id, input))
        return "Success"
      },

      deleteRole: async (parent, {id}, context, info) => {
        var result = await request(roles_delete_request(id))
        return "success"
      },

      createRole: async (parent, {input}, context, info) => {
        return await request(roles_create_request(input))
      },

      updateRole: async (parent, {id, input}, context, info) => {
        await request(roles_update_request(id, input))
        return "Success"
      }
    },
    
    Employee: {
      account: async parent => {
       return await request(userAccount_by_id_request(parent.account_id))
      },
      role: async parent => {
       return await request(roles_by_id_request(parent.role_id))
      }
    },

    Project: {
     client: async parent => {
      var acc = await query(`SELECT * FROM projects.client WHERE id = ${parent.client_id}`) 
      return acc[0]
    },
    manager: async parent => {
      var result = await request(employee_request)
      return result.filter(employee => employee.id == parent.employee_id)[0]
    },
    tasks: async parent => {
      return await query(`SELECT * FROM tasks.task WHERE project_id = ${parent.id}`) 
    },
  },   
  
  Task: {
    activities: async parent => {
      return (await query(`SELECT * FROM tasks.activity WHERE task_id = ${parent.id}`)) 
    },
    assigned: async parent => {
      var result = await request(employee_request)
      return result.filter(employee => employee.id == parent.employee_id)[0] 
    }
  },

  Activity: {
    assigned: async parent => {
      var result = await request(employee_request)
          return result.filter(employee => employee.id == parent.employee_id)[0] 
    }
  },
} 

// ------------------ Apollo Server  --------------------- //
// The ApolloServer constructor requires two parameters: your schema
// definition and your set of resolvers.
const server = new ApolloServer({ typeDefs, resolvers, });

// The listen method launches a web server.
server.listen({port: 2004}).then(({ url }) => {
   console.log(`🚀  Server ready at ${url}`);
});