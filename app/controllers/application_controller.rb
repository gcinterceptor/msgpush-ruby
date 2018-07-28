class ApplicationController < ActionController::API
 @@buffer = [1000]
 @@index = 0

 def index
 	msg = Array(0..1999)
 	@@buffer[@@index%@@buffer.size] = msg
 	head 200
 end

end