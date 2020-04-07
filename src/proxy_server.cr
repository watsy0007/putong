require "./putong"

host = "0.0.0.0"
port = 8000
server = Putong::Proxy::Server.new host, port, handlers: [
    HTTP::LogHandler.new,
]

server.bind_tcp port
puts "Listening on http://#{server.host}:#{server.port}"
server.listen