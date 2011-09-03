Starbucks     =  require('./starbucks').Starbucks
ServerAdapter =  require('./server_adapter').ServerAdapter

server_adapter = new ServerAdapter
starbucks = new Starbucks(server_adapter)
