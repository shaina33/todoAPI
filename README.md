##To-do API

This is a flexible and easy-to-use to-do list API, made as a project for my Bloc studies. Responses are in JSON format using Rails Active Model Serializers.

##Sample cURL commands

To create a new user:
$ curl -u "myUsername":"myPassword" -d "user[first_name]=Name" -d "user[last_name]=Name" -d "user[username]=NewUsername" -d "user[password]=NewPassword" http://localhost:3000/api/users/

To create a new list:
$ curl -u "myUsername":"myPassword" -d "list[name]=ListName" -d http://localhost:3000/api/users/user_id/lists

To create a new item (a to-do item on a list):
$ curl -u "myUsername":"myPassword" -d "item[description]=ItemDescription" "item[priority]=#" http://localhost:3000/api/lists/list_id/items
default values: priority = "2"; completed = false

To update an existing item:
$ curl -X PUT -u "myUsername":"myPassword" -d "item[completed]=true" http://localhost:3000/api/users/1/lists/1/items

To retrive all existing users:
$ curl -u "myUsername":"myPassword" http://localhost:3000/api/users/
