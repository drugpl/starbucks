ws =  require("websocket-server")

server = ws.createServer()

onConnection = (connection) ->
  console.log("someone connected")
  connection.write("yo")

server.addListener( "connection", onConnection)
server.listen(8080)
