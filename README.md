##To-do API

This is a flexible and easy-to-use to-do list API, made as a project for my Bloc studies. Responses are in JSON format using Rails Active Model Serializers.

##Sample curl commands

To create a new user:
$ curl -u "myUsername":"myPassword" -d "user[username]=NewUsername" -d "user[password]=NewPassword" http://localhost:3000/api/users/

To retrive existing users:
$ curl -u "myUsername":"myPassword" http://localhost:3000/api/users/
