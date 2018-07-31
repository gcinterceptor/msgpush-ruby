class ApplicationController < ActionController::API
 @@buffer = Array.new(ENV.fetch('WINDOW_SIZE'){'1'}.to_i)
 @@index = 0

 def index
	msg = []
	ENV.fetch('MSG_SIZE'){'1024'}.to_i.times{ msg << 'a' } 
	@@buffer[@@index] = msg
	@@index = (@@index + 1) % @@buffer.size
 	head 200
 end

end