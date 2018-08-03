#!/usr/bin/ruby
    
class Hung
	def test_error
	begin
		puts "doan Hung"
		raise "Error"
		puts "Continue"
	rescue
		puts "Stop"
	#retry
	end
	end
end

Hung.new.test_error
