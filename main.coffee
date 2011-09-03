Starbucks     =  require('./starbucks').Starbucks
ServerAdapter =  require('./server_adapter').ServerAdapter

server_adapter = new ServerAdapter
console.log("I'm here")
starbucks = new Starbucks(server_adapter)
