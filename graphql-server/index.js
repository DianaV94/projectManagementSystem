const { ApolloServer, gql } = require('apollo-server');

// A schema is a collection of type definitions (hence "typeDefs")
// that together define the "shape" of queries that are executed against
// your data.
const typeDefs = gql`
  # Comments in GraphQL strings (such as this one) start with the hash (#) symbol.

  # This "Book" type defines the queryable fields for every book in our data source.
  type User_Account {
    id: Number
    username: String
    password: String
    firstName: String
    lastName: String
    projectManager: Boolean
  }

  const users = [
  {
    id: 1,
    username: 'Diana',
    password: 'IamWonderwomen',
    firstName: 'Diana',
    lastName: 'V',
    projectManager: true,
  },
  {
    id: 1,
    username: 'Ghenadie',
    password: 'IamBatman',
    firstName: 'Ghenadie',
    lastName: 'P',
    projectManager: false,
  },
];

  # The "Query" type is special: it lists all of the available queries that
  # clients can execute, along with the return type for each. In this
  # case, the "books" query returns an array of zero or more Books (defined above).
  type Query {
    users: [User_Account]
  }
`;