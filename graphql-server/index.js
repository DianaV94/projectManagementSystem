const { ApolloServer, gql } = require('apollo-server');
const util = require('util');


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
    next_task: Task
    activities: [Activity]!
    assigned:Employee
    
  }

  type Activity{
    id: Int!
    activity_name: String!
    task_id: Int!
    priority: String!
    description: String!
    start_date: String!
    end_date: String!
    next_activity: Activity
    assigned: Employee
  }

   type Client {
    id: Int!
    name: String!
    address: String!
    details: String!
    email: String!
   }


  # Employees
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
    employee(name: String): Employee
    
    projects: [Project]
    project(id: Int): [Project]

#    task(id: Int): Task
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

const request = require("request-promise");
const employee_request = {
  uri: 'https://projectmanagement.free.beeceptor.com/employee',
  json: true
}

const role_request = {
  uri: 'https://projectmanagement.free.beeceptor.com/role',
  json: true
}

const userAccount_request = {
  uri: 'https://projectmanagement.free.beeceptor.com/user_account',
  json: true
}

const query = util.promisify(client.query).bind(client);

// ------------------ Resolvers  --------------------- //

const resolvers = {
    Query: {
        employees: async () => {
           return await request(employee_request)
        },
        employee: async (parent, args) => {
          var result = await request(employee_request)
          return result.filter(employee => employee.employee_name == args.name)[0]
        },
       
        projects: async (parent, args, context, info) => {
           return await query(`SELECT * FROM projects.project`)
        },
        project: async (parent, args, context, info) => {
          return await query(`SELECT * FROM projects.project WHERE id = ${args.id}`)
        },
    },

    Employee: {
      account: async parent => {
        var result = await request(userAccount_request)
       return result.filter(user_account => user_account.id == parent.user_account_id)[0]
      },
      role: async parent => {
       var result = await request(role_request)
       return result.filter(role => role.id == parent.role_id)[0]
      }
    },

    Project: {
     client: async parent => {
      var acc = await query(`SELECT * FROM projects.client WHERE id = ${parent.client_id}`) 
      return acc[0]
    },
    manager: async parent => {
      var result = await request(employee_request)
          return result.filter(employee => employee.id == args.employee_id)[0]
    },
    tasks: async parent => {
      return await query(`SELECT * FROM tasks.task WHERE project_id = ${parent.id}`) 
    },
  },   
  
  Task: {
    next_task: async parent => {
      return (await query(`SELECT * FROM tasks.task WHERE id = ${parent.next_task}`))[0] 
      },
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
    },
    next_activity: async parent => {
      return (await query(`SELECT * FROM tasks.activity WHERE id = ${parent.next_activity}`))[0] 
      }
  },
}


// ------------------ Apollo Server  --------------------- //
// The ApolloServer constructor requires two parameters: your schema
// definition and your set of resolvers.
const server = new ApolloServer({ typeDefs, resolvers, });

// The listen method launches a web server.
server.listen({port: 2001}).then(({ url }) => {
   console.log(`🚀  Server ready at ${url}`);
});