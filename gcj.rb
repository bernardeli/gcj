input = File.open(ARGV.first)

T = input.readline.chomp.to_i

T.times do |t|
  n, k = input.readline.split.collect {|i| i.chomp.to_i }
  output = 2 ** n - 1
  on = (k & output) == output
  puts 'Case #%s: %s' % [t + 1, on ? 'ON' : 'OFF']
end
