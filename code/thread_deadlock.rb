#!/usr/bin/ruby
    $mutex = Mutex.new
    n = 5
    cv = ConditionVariable.new
    t1 = Thread.new do
		$mutex.synchronize do
			cv.wait($mutex)
			while n < 6 do 
				puts "deadlock occured"
			end
			puts "no deadlock now because n= #{n}"				
		end	
	end
    t2 = Thread.new do
		sleep(1)
		$mutex.synchronize do
			n += 5
			puts "n is incremented now"
			cv.signal						
		end	
	end

    t1.join
    t2.join

