str = gets.chomp.to_s
n = gets.to_i

n.times do
  comm = gets.chomp.split
  a = comm[1].to_i
  b = comm[2].to_i
  if comm[0] == "print"
    puts str[a..b]
  elsif comm[0] == "reverse"
    str[a..b] = str[a..b].reverse
  elsif comm[0] == "replace"
    str[a..b] = comm[3]
  end
end
