ws =  require("websocket-server")

server = ws.createServer()

onMessage = (msg) ->
  console.log(msg)
  server.send(msg)
#onConnection = (connection) -> connection.addListener("message", onMessage)
onConnection = (connection) ->
  console.log("someone connected")
  connection.write("yo")
  connection.addListener("message", onMessage)

server.addListener( "connection", onConnection)
server.listen(8080)
#console.log(server)
#server.broadcast("hi from server") while true
#console.log(server.server.connections) while true
