 Real Estate Api
====================

  This project is  Ruby Developer Challenge  for api
  [API Live Demo](https://real-estate-api-by-phillip.herokuapp.com/)
  
## Getting Started 
---------------------
### Requirements
  * **Ruby** Version: **'2.7.1'**
  * **Rails** Version: **'6.1.4'**
  * Bundle Recomentded **1.17.3**
  * PostgreSQL 12.3
  * rvm 1.29.10

 
### Installation

#### Getting Started
Start by Cloning the repo via console:
` $ git clone git@github.com:philip13/real-estate-api.git`
 
Now that you have the project go to the repo:
`$ cd real-estate-api`

> Make sure you have rvm installed, if you don't have pleae visit  [rvm install](https://rvm.io/rvm/install)
> Make sure you have ruby-2.7.1, list all your rails version `$ rvm list` and use it with:
`$ rvm use 2.7.1`

> If you don't have ruby-2.7.1 you could install it:
`$ rvm install 2.7.1`

> Install bundler if you don't have yet [install bundler](https://bundler.io/) or run the next command `$ gem install bundler`

Install all dependencies in your Gemfile:
`$ bundle install`



#### DB Setup

##### Create you local data base:
```
  $ rake db:create
  $ rake db:migrate
```

##### Autopopulate the database
`$ rake db:seed`

#### Development

##### Run your local server:

`$ rails s`
> By default you can visit http://localhost:3000/ to make sure your local server is running

##### Real Estate methods to CRUD records

| Prefix | Verb | URI Pattern | Controller#Action |
| ----------- | ----------- | ----------- | ----------- |
| api_v1_real_estates | GET | /api/v1/real_estates(.:format) | api/v1/real_estates#index |
|   | POST |  /api/v1/real_estates(.:format) | api/v1/real_estates#create |
| api_v1_real_estate | GET | /api/v1/real_estates/:id(.:format) | api/v1/real_estates#show |
|     | PATCH | /api/v1/real_estates/:id(.:format) | api/v1/real_estates#update |
|  | PUT  |  /api/v1/real_estates/:id(.:format) | api/v1/real_estates#update |
|  | DELETE | /api/v1/real_estates/:id(.:format) | api/v1/real_estates#destroy |

##### Run Test:
`$ rspec `
