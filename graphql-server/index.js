const { ApolloServer, gql } = require('apollo-server');
const util = require('util');

// A schema is a collection of type definitions (hence "typeDefs")
// that together define the "shape" of queries that are executed against
// your data.
const typeDefs = gql`
  # Comments in GraphQL strings (such as this one) start with the hash (#) symbol.

  # Models

  # type Project {
  #   id: Int
  #   project_name: String
  #   start_date: String
  #   end_date: String
  #   project_descr: String
  #   client: Client
  # }

  # type Client {
    
  # }

  # Employees
  type Employee {
    id: Int
    employee_code: String
    employee_name: String
    user_account_id: Int
    role_id: Int
    #account: UserAccount
    #role: Role
  }

  type UserAccount {
    id: Int
    email: String
    firstName: String
    lastName: String
  }

  type Role {
    id: Int
    role_name: String
  }

  # Queries
  type Query {
    employees: [Employee]
    # projects: [Project]
    # project(id: Int): [Project]
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
const query = util.promisify(client.query).bind(client);

// ------------------ Resolvers  --------------------- //

const resolvers = {
    Query: {
        employees: async (parent, args, context, info) => {
           return await getEmployees()
        }
        // projects: async (parent, args, context, info) => {
        //     return await query(`SELECT * FROM project`)
        // },
        // project: async (parent, args, context, info) => {
        //     return await query(`SELECT * FROM project WHERE id = ${args.id}`)
        // },
    },
};

async function getEmployees() {
  var employees = await getRawEmployees()
  var userAccounts = await getRawUserAccounts()
  var roles = await getRawRoles()


  console.log(userAccounts)
  console.log(roles)

  return employees
}

/*
{
  id: 1,
  employee_code: '1001',
  employee_name: 'Diana',
  user_account_id: 1,
  role_id: 1
}
*/
async function getRawEmployees() {
  return parse(await query(`SELECT * FROM employee`));
}

/*
{ 
  id: 1,
  email: 'dianamail',
  firstname: 'diana',
  lastname: 'V'
}
*/
async function getRawUserAccounts() {
  return parse(await query(`SELECT * FROM user_account`));
}

/*
{ 
  id: 1,
  role_name: 'Manager'
}
*/
async function getRawRoles() {
  return parse(await query(`SELECT * FROM role`));
}

function parse(input) {
  return JSON.parse(JSON.stringify(input));
}

// ------------------ Apollo Server  --------------------- //
// The ApolloServer constructor requires two parameters: your schema
// definition and your set of resolvers.
const server = new ApolloServer({ typeDefs, resolvers, });

// The listen method launches a web server.
server.listen({port: 2000}).then(({ url }) => {
   console.log(`🚀  Server ready at ${url}`);
});