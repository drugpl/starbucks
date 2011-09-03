WebSocket =  require('websocket-client').WebSocket

class ServerAdapter
  constructor: ->
    ws = new WebSocket('ws://localhost:8080/')
    ws.onmessage =  (m) =>
      this.push(m.data, m.data, m.data, m.data) if @observer
  push: (server, channel, user, msg) ->
    @observer.notify(server, channel, user, msg)
  subscribe: (observer, server, channel) ->
    @observer = observer


exports.ServerAdapter = ServerAdapter

