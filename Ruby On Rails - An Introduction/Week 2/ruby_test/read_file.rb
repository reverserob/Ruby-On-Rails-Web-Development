 File.foreach('test.txt') do |line|
   puts line
   p line
   p line.chomp
   p line.split
 end

 # this is a comment

 # Handle reading error file

 begin
   File.foreach('do_not_exist.txt') do |line|
     puts line.chomp
   end
 rescue Exception => e
  puts e.message
  puts "Let's pretend this did't happend ..."
 end