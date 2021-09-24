while (m,f,r = gets.split.map(&:to_i)) do
  return if m == -1 && f == -1 && r == -1

  def total_points(m, f)
    m + f
  end

  point = total_points(m, f)

  if point >= 80
    puts "A"
  elsif point >= 65 && point < 80
    puts "B"
  elsif point >= 50 && point < 65
    if m == -1 || f == -1
      puts "F"
    else
      puts "C"
    end
  elsif point >= 30 && point < 50
    if r >= 50
      puts "C"
    elsif m == -1 || f == -1
      puts "F"
    else
      puts "D"
    end
  elsif point < 30
    puts "F"
  elsif m == -1 || f == -1
    puts "F"
  end
end

# puts "F"が何度も書かれててダサいので、こういうのは
# if内の条件にまとめてあげられるともっときれいになる
# もっときれいな書き方
# while (m, f, r = gets.split(" ").map(&:to_i)) != [-1, -1, -1]
#   if m + f < 30 or m < 0 or f < 0
#     puts "F"
#   elsif m + f >= 80
#     puts "A"
#   elsif m + f >= 65
#     puts "B"
#   elsif m + f >= 50 or r >= 50
#     puts "C"
#   else
#     puts "D"
#   end
# end
# created by https://onlinejudge.u-aizu.ac.jp/status/users/yudedako
##############################################
