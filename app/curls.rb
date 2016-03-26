#ADD NEW CURL COMMAND
#curl -i -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"name": "George"}' http://localhost:3000/api/monkeys

#DELETE CURL COMMAND
#curl -i -H "Accept: application/json" -X DELETE http://localhost:3000/api/monkeys/9.json

#EDIT CURL COMMAND
#curl -i -H "Accept: application/json" -H "Content-type: application/json" -X PUT -d '{"name": "Steve"}' http://localhost:3000/api/monkeys/13.json

# ADD NEW USER
#curl -i -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"user":{"email": "test@guy.com","password":"testguy1","password_confirmation": "testguy1"}}' http://localhost:3000/api/users

# SIGN IN
#curl -i -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"email": "test@guy.com","password":"testguy1"}' http://localhost:3000/api/sessions

# SIGN OUT
#curl -X DELETE http://localhost:3000/api/sessions/11
