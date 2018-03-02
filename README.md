# About

An administrative system for managing a PetShop that allows the registration of sales, registration of customers, products, discounts, services as well as the scheduling of services and sending promotional emails to the client list.

## Purpose

This project has with purpose the learning new skills. The project was developed following the lessons of bootcamp in the [OneBitCode](onebitcode.com).

## Prerequisites

* Docker
* Docker Compose

## Getting started

The steps below will help you in the building this project in the development and test environment:

### 1. Clone the Project
```
git clone git@github.com:rivelinojunior/bootcampSFS-petadmin.git
```

### 2. Building the project with docker/docker-compose
```
  docker-compose up --build
```

### 3. Access the application in your browser
> localhost:3000/admin

## Running the test
```
docker-compose run --rm website bundle exec rspec
```

## Building with the technologies
* Ruby on Rails
* Postgresql
* Docker / Docker Compose
* Rspec
* Sidekiq
* Redis
* Fae

## Credits
* Rivelino Junior - [@rivelinojunior](http://github.com/rivelinojunior)
* Onebitcode - [blog](http://www.onebitcode.com)