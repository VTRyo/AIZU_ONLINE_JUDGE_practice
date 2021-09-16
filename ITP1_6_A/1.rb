# inputを逆順出力する
i = 1
a = []
for i in i..2
  a = gets.split(' ').map(&:to_i)
end
puts a.reverse.join(" ")
