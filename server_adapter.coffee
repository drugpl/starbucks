WebSocket =  require('websocket-client').WebSocket

class ServerAdapter
  constructor: ->
    ws = new WebSocket('ws://localhost:8080/')
    ws.onmessage =  (m) ->
      console.log(m.data)
    ws.send("hi from socket")
  push: (server, channel, user, msg) ->
  subscriber: (observer, server, channel) ->

exports.ServerAdapter = ServerAdapter

