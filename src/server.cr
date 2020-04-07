require "kemal"

# Matches GET "http://host:port/"
get "/" do
  "Hello World!"
end

ws "/ws" do |socket|
    socket.on_message do |msg|
        puts msg
    end
end

Kemal.run