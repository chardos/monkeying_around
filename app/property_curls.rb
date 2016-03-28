#CREATE PROPERTY
#curl -i -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"address": "123 Winslow Ave", "user_id": "1", "price":"2400"}' http://localhost:3000/api/properties

#DELETE PROPERTY
#curl -i -H "Accept: application/json" -X DELETE http://localhost:3000/api/properties/1.json

#EDIT PROPERTY
#curl -i -H "Accept: application/json" -H "Content-type: application/json" -X PUT -d '{"price": "3500"}' http://localhost:3000/api/properties/2.json

#VIEW PROPERTIES
#curl -X GET http://localhost:3000/api/properties
