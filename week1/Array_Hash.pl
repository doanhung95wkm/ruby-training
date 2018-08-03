Array, Hash

Array is for stock the data in ruby, the data may be a suite of strings, number, of objects.
For creating a array:
  a1 = []
  a2 = Array.new
  a3 = [1,'string1',Object.new]
The array is ordered by intergered index, that means we can access a value in array via:
  a3[1] = 'string'
  a3[0] = 1

Hash is a collection of key values, example:
  h1 = Hash.new
  h2 = { 'key1' => 'value1' , 'key2' => 'value2'}
  h2['key1'] = 'value'

For manipulation with array and hash, we can use the Iterators like:
  Each: it is usually used for showing each value inside the collection:
    [1,2,3].each { |value|  puts value + 1}
    => 2 
      3 
      4
    [ 'key1' => 'value1' , 'key2' => 'value2'].each {|k,v| puts "The value of #{k} is #{v}"}
    => The value of key1 is value1
       The value of key2 is value2
  Map: map iterator will treating every value of collection and return a new array while each will simply show the value
    [1,2,3].each { |value| value + 1}
    => [2,3,4]
    { 'key1' => 'value1' , 'key2' => 'value2'}.map {|k,v| k}
    => ['key1','key2']
  Inject: inject iterator will use every element of the collection for calculate a function and return the result.
    [1,2,3,4].inject(0) { |sum,value| sum=sum+value}
    =>10
  Inject can also return an object like:
    ['a','b','a','c'].inject(Hash.new(0)) do |hash,word|
        hash[word]+=1
        hash 
        end 
    =>  {"a"=>2, "b"=>1, "c"=>1}
  There are also many types of iterators we can use by each_with_index, find, collect 