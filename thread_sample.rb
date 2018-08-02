#!/usr/bin/ruby
class Item
	class << self; attr_accessor :price end
	@price=10
end

$mutex = Mutex.new
def func1
   $mutex.synchronize do
   price = Item.price 
   price += 10
   sleep(2)
   Item.price = price
   end
end

def func2
   $mutex.synchronize do
   price = Item.price
   price += 10
   sleep(1)
   Item.price = price
   end	
end

t1 = Thread.new{func1()}
t2 = Thread.new{func2()}

t1.join
t2.join

puts Item.price
