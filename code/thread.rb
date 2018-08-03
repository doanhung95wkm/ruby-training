#!/usr/bin/ruby

    def func1
       i = 3
       while i<=5
          puts "Function 1: #{i}"
          i = i+1
sleep(1)
       end
	Thread.current['name']='thread 1'
    end

    def func2
       j = 0
       while j<=2
          puts "Function 2: #{j}"
          j = j+1
sleep(1)
       end
 Thread.current['name']='thread 2'
    end

    t1 = Thread.new{func1()}
    t2 = Thread.new{func2()}

t1.join
t2.join
print t1['name']
print t2['name']
