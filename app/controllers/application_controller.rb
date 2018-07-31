class ApplicationController < ActionController::API
 @@buffer = Array.new(1)
 @@index = 0

 def index
	msg = []
	204800.times{ msg << 'a' } 
	@@buffer[@@index] = msg
	@@index = (@@index + 1) % @@buffer.size
 	head 200
 end

end