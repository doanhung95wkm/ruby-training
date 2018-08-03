Exceptions Handle error 

    When a error occurs, it normally stops the execution of the program.
    We can avoid them by using exception to take appropriate action to the error. 
    The code below will try to open a file and read the content inside. 
    If users don't type the name of the file correctly, the program won't stop. Instead, the programs will demande the user to retype the correct name of the file.

      begin
        print("Type the file: ")
        file_name = readline.chomp
        file = File.open(file_name, "r")
        content = file.sysread(30)
        puts content
      rescue
        puts "Retype"
      retry
      end

    We notice that when an error occurs, the codes followed the error line won't be executed.
    But the program isn't stopped, the "rescue" is used for making an exception, the code after 'rescue' is executed.
    And the "retry" is used for relance the code from the "begin" one more time. Note that if users doesn't type the path name of the file, the loop will be infinite.
    In the place of "retry", we can have an "ensure". With it, all the code below the "ensure" will be executed whether the exception is called or not.

    Beside the rescue, Ruby also has a Throw/Catch for dealing with when something goes wrong. 
    Throw/Catch is often used for escaping from a deep nest.

    Syntax: 
    catch :key do
      #block
      throw :key #{condition} 
    end
       example:

    def promptAndGet(prompt)
       print prompt
       res = readline.chomp
       throw :quit_equested if res.eql? "!"
       res
    end

    catch :quit_equested do
       name = promptAndGet("Name: ")
       age = promptAndGet("Age: ")
       sex = promptAndGet("Sex: ")
    end

    The code above will simply quit the block of "catch" when users type '!'