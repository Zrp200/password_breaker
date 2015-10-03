password, characters, start, attempt = ARGV.first.to_s, Array.new, Time.now, String.new
raise "Password cannot contain spaces" if password.include? " "
File.open("characters.txt", ?r) {|file| file.each_char {|char| characters << char} }
characters.delete ?\n
until attempt == password
	attempt = String.new
	password.length.times {attempt += characters.sample}
	puts attempt unless ARGV.include? "--silence-attempt" 
end
puts "password: #{password}"
puts "Time to break: #{Time.now - start} seconds"
