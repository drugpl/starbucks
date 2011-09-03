ws =  require("websocket-server")

server = ws.createServer()

onMessage = (msg) ->
  console.log(msg)
  server.send(msg)
#onConnection = (connection) -> connection.addListener("message", onMessage)
onConnection = (connection) ->
  console.log("someone connected")
  connection.addListener("message", onMessage)

server.addListener( "connection", onConnection)
server.listen(8080)
console.log(server)
#console.log(server.server.connections) while true
