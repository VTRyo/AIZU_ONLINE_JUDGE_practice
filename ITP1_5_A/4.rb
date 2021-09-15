# 3の倍数のとき出力する

int = gets.to_i
i = 1
for i in i..int
  if i % 3 == 0
    print " #{i}"
  elsif i.to_s.include?('3')
    print " #{i}"
  else
    next
  end
  i += 1
end
