# GrowTogether Backend

![Ruby](https://img.shields.io/badge/Ruby-3.1.1-green)
![Rails](https://img.shields.io/badge/Rails-7.0.7-red)

## Overview

GrowTogether is an app that provides a platform for users to access resources that will help them learn about their child's development and document milestones in their children's lives from birth to Early Childhood. It includes the following features:

- **Resources**: Access educational resources to support your child's development.

- **Milestone Tracker**: Keep track of your child's milestones and development progress.

- **Reminders**: Set and receive reminders for important events or tasks related to your child's growth.

- **Photo Album**: Create a digital photo album to cherish and share precious moments in your child's life.

## Table of Contents

- [Getting Started](#getting-started)
- [Dependencies](#dependencies)
- [More Info](#more-info)

## Getting Started

To get started with this backend, follow these steps:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/robynspaulding/GrowTogether-backend.git
   
2. Install the required gems:

   ```bash
   bundle install

3. Set up your database and run migrations:

   ```bash
   rails db:create
   rails db:migrate
   
4. Start the Rails server:

   ```bash
   rails server
The backend should now be running locally at http://localhost:3000.


## Dependencies

The backend is built with Ruby on Rails and relies on several gems and packages to operate effectively. Here are the main dependencies:

### Ruby and Rails

- **Ruby 3.1.1**: The programming language used.
- **Rails 7.0.7**: The web application framework for Ruby.

### Database

- **PostgreSQL (pg gem)**: The relational database used for storing application data.

### Authentication and Security

- **Bcrypt**: A password hashing algorithm.
- **JWT (JSON Web Tokens)**: For user authentication and authorization.

### HTTP Client

- **HTTParty**: A popular Ruby HTTP client.

### API Documentation

- **JBuilder**: A templating engine for generating JSON documents.

### Web Scraping

- **Nokogiri**: A Ruby gem for parsing HTML and XML.
- **RSS**: A Ruby library for parsing RSS feeds.

### Server

- **Puma**: A simple, fast, and highly concurrent HTTP server for hosting the Rails application.

### Cross-Origin Requests

- **Rack CORS**: Middleware for handling Cross-Origin Resource Sharing (CORS).

### Development and Debugging

- **Bootsnap**: Speeds up the boot time of the Rails application.
- **Debug**: A Ruby library for debugging.
- **Rack Test**: A small, simple testing API for Rack applications.

## More Info
For more information about the GrowTogether project, visit the <a href="https://github.com/pdhende/GrowTogether-frontend">frontend repository</a>

