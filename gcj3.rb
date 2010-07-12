input = File.open(ARGV.first)

T = input.readline.chomp.to_i

T.times do |t|
  rr, k, n = input.readline.split.collect {|i| i.chomp.to_i }
  groups = input.readline.split.collect {|n| n.chomp.to_i} 

  @total_euro = 0
  rr.times do |r|
    
    done = 0
    groups.each_with_index do |group, index|
      break if (done+group) > k
      done += group
      groups << groups.shift
    end

    @total_euro += done 
  end

  puts 'Case #%s: %s' % [t + 1, @total_euro]
end
