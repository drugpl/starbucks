WebSocket =  require('websocket-client').WebSocket

onData = (buf) ->
  console.log(buf)
class ServerAdapter
  constructor: ->
    ws = new WebSocket('ws://localhost:8080/')
    ws.addListener('data', onData)
    ws.onmessage =  (m) ->
      console.log(m)
    ws.send("hi from socket")
  push: (server, channel, user, msg) ->
  subscriber: (observer, server, channel) ->

exports.ServerAdapter = ServerAdapter

