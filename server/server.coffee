ws =  require("websocket-server")

server = ws.createServer()

onConnection = (connection) ->
  console.log("someone connected")
  connection.write("yo")
  connection.write("yo 2")
  connection.write("yo 3")

server.addListener( "connection", onConnection)
server.listen(8080)



