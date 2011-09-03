Starbucks =  require('./starbucks').Starbucks

assert = (expr, message='assertion failed') ->
  if not expr
    console.log(message)
    throw new AssertError(message)

class MockServerAdapter
  push: (server, channel, user, msg) ->
    @observer.notify(server, channel, user, msg)

  subscribe: (observer, server, channel) ->
    @observer = observer

class MockView
  constructor(@events = [])
  notify:  (server, channel, user, msg) ->
    @events.push([server, channel, user, msg])

  events: @events



server_adapter = new MockServerAdapter
view = new MockView

starbucks = new Starbucks(server_adapter, views = [view])
starbucks.subscribe("irc.freenode", "drug.pl")
server_adapter.push("irc.freenode", "drug.pl", "mlomnicki", "sql rulez")

assert(view.events.length == 1, "view not notified")

console.log(".")


