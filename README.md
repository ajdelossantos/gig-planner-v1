# Gig Planner - v1

A tool to help bands organize their gigs. Create a band, add pieces to your repertoire, and organize them into sets and gigs.

A React on Rails project: Rails API-only, PostgreSQL, React, and ActiveAdmin.

## Installation

1. Clone the repo
2. Navigate to the project directory and enter in the following shell commands

```
bundle install
rails db:setup
rails db:seed

cd client

npm install

rails s -p 3001
npm run start
```

3. In browser, navigate to http://localhost:3001/admin to access admin panel

- username: admin@example.com
- password: password

4. In browser, navigate to http://localhost:3000/ to see the app
