n = gets.to_i
taro = 0
hanako = 0
n.times do
  x, y = gets.chomp.split.map(&:to_s)
  if x < y
    hanako += 3
  elsif x == y
    hanako += 1
    taro += 1
  elsif x > y
    taro += 3
  end
end
puts "#{taro} #{hanako}"
