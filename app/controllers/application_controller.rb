class ApplicationController < ActionController::API
	@@msg_size = ENV.fetch('MSG_SIZE'){'1024'}.to_i
	@@window_size = ENV.fetch('WINDOW_SIZE'){'1'}.to_i
	@@buffer = Array.new(@@window_size) { Array.new(@@msg_size) }
	@@index = 0

	def index
		a = Array.new(@@msg_size){'a'}
		@@buffer[@@index] = a
		@@index = (@@index + 1) % @@window_size
		head 200
	end   
end