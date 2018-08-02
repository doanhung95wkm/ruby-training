

def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quit_equested if res.eql? "hung"
   res
end

catch :quit_equested do
   name = promptAndGet("Name2: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # process information
end


# catch :quit_equested do
#    name = promptAndGet("Name2: ")
#    age = promptAndGet("Age: ")
#    sex = promptAndGet("Sex: ")
#    # ..
#    # process information
# end
