const { ApolloServer, gql } = require('apollo-server');
const util = require('util');

// A schema is a collection of type definitions (hence "typeDefs")
// that together define the "shape" of queries that are executed against
// your data.
const typeDefs = gql`
  # Comments in GraphQL strings (such as this one) start with the hash (#) symbol.

  # This "Book" type defines the queryable fields for every book in our data source.
  type User_Account {
    id: Int
    username: String
    password: String
    email: String
    firstname: String
    lastName: String
    project_manager: Int
  }

  type Project {
    id: Int
    project_name: String
    start_date: String
    end_date: String
    project_descr: String
    client_id: Int
  }

  # Queries
  type Query {
    users: [Project]
    user(id: Int): [User_Account]
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
        users: async (parent, args, context, info) => {
            return await query(`SELECT * FROM projects.project`)
        },
        user: async (parent, args, context, info) => {
            return await query(`SELECT * FROM user_account WHERE id = ${args.id}`)
        },
    },
};

// ------------------ Apollo Server  --------------------- //
// The ApolloServer constructor requires two parameters: your schema
// definition and your set of resolvers.
const server = new ApolloServer({ typeDefs,
     resolvers, 
});

// The listen method launches a web server.
server.listen({port: 2000}).then(({ url }) => {
   console.log(`🚀  Server ready at ${url}`);
});