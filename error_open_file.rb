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
