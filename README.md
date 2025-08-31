# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Rails GraphQL API Example

This is a simple Rails API demonstrating GraphQL with Authors and Books. You can query authors, books, and perform mutations (create, update, delete).

### Setup

Clone the repository

```
git clone https://github.com/magicmarie/GraphQL-API.git
cd GraphQL-API
```

Install dependencies

```
bundle install
```


Create, migrate the database and seed data

```
rails db:create
rails db:migrate
rails db:seed
```

Running the Server:
```
rails server
```

By default, the server runs on http://localhost:3000.

## Access GraphiQL (Development Only)

GraphiQL is an interactive IDE for testing GraphQL queries and mutations.

http://localhost:3000/graphiql

Paste your queries or mutations into the left panel.

Click Execute to see results in the right panel.


### GraphQL Endpoints

Query all authors
```
{
  authors {
    id
    name
    books {
      id
      title
    }
  }
}
```

Query all books
```
{
  books {
    id
    title
    author {
      id
      name
    }
  }
}
```

### Mutations

Create Author
```
mutation {
  createAuthor(input: { name: "Brandon Sanderson" }) {
    author {
      id
      name
    }
    errors
  }
}
```

Update Author
```
mutation {
  updateAuthor(input: { id: 1, name: "Updated Name" }) {
    author {
      id
      name
    }
    errors
  }
}
```

Delete Author
```
mutation {
  deleteAuthor(input: { id: 1 }) {
    success
    errors
  }
}
```
