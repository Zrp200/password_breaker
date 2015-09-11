password = ARGV.first.to_s
digits = Array('a'..'z') << Array(0..9) << Array('A'..'Z')
digits.flatten!
start = Time.now
attempt = String.new
until attempt == password
	attempt = String.new
	password.length.times {attempt += digits.sample.to_s}
	p attempt
end
puts "password: #{password}"
puts "Time to break: #{Time.now - start}"
