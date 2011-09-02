class Starbucks
  constructor: (@server_adapter, @observers = []) ->

  subscribe: (server, channel) ->
    @server_adapter.subscribe(this, server, channel)

  notify: (server, channel, user, msg) ->
    observer.notify(server, channel, user, msg) for observer in @observers
 

exports.Starbucks = Starbucks
