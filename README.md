##To-do API

This is a flexible and easy-to-use to-do list API, made as a project for my studies with Bloc. Responses are in JSON format using Rails Active Model Serializers.

###Supported API Actions

| Action        | HTTP Verb | URI Pattern                      | Notes                         |
|---------------|-----------|----------------------------------|-------------------------------|
| users#index   | GET       | /api/users                       | All users                     |
| users#show    | GET       | /api/users/user_id               |                               |
| users#create  | POST      | /api/users                       |                               |
| users#update  | PUT       | /api/users/user_id               |                               |
| users#destroy | DELETE    | /api/users/user_id               |                               |
| lists#index   | GET       | /api/users/user_id/lists         | All lists for a given user_id |
| lists#show    | GET       | /api/users/user_id/lists/list_id |                               |
| lists#create  | POST      | /api/users/user_id/lists         |                               |
| lists#update  | PUT       | /api/users/user_id/lists/list_id |                               |
| lists#destroy | DELETE    | /api/users/user_id/lists/list_id |                               |
| items#index   | GET       | /api/lists/list_id/items         | All items for a given list_id |
| items#show    | GET       | /api/lists/list_id/items/item_id |                               |
| items#create  | POST      | /api/lists/list_id/items         |                               |
| items#update  | PUT       | /api/lists/list_id/items/item_id |                               |

###Models & Attributes

**Users:**first_name, last_name, username, password, email (optional)

**Lists:**name, belongs to User

**Items:**description, priority (default = '2'), completed (default = false), belongs to List

###Sample cURL commands

**To create a new user:**
$ curl -u "myUsername":"myPassword" -d "user[first_name]=Name" -d "user[last_name]=Name" -d "user[username]=NewUsername" -d "user[password]=NewPassword" -d "user[email]=EmailAddress" http://localhost:3000/api/users/

**To retrive a user by ID:**
$ curl -u "myUsername":"myPassword" http://localhost:3000/api/users/user_id

**To retrive all existing lists for a particular user ID#:**
$ curl -u "myUsername":"myPassword" http://localhost:3000/api/users/user_id/lists

**To update an existing item:**
$ curl -X PUT -u "myUsername":"myPassword" -d "item[completed]=true" http://localhost:3000/api/lists/list_id/items/item_id

**To destroy an existing list:**
$ curl -X DELETE -u "myUsername":"myPassword" http://localhost:3000/api/users/user_id/lists/list_id
