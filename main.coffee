Starbucks     =  require('./starbucks').Starbucks
ServerAdapter =  require('./server_adapter').ServerAdapter

class ConsoleView
  notify: (server, channel, user, msg) ->
    console.log("view says: #{msg}")

server_adapter = new ServerAdapter
console_view   = new ConsoleView
starbucks = new Starbucks(server_adapter, [console_view])

starbucks.subscribe("freenode", "drug.pl")
