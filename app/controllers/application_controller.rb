class ApplicationController < ActionController::API
 @@buffer = [1]
 @@index = 0

 def index
	msg = []
	204800.times{ msg << 'a' } 
 	@@buffer[@@index%@@buffer.size] = msg
 	head 200
 end

end