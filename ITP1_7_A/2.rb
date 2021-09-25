while (n, x = gets.split.map(&:to_i)) do
  return if n == 0 && x == 0
  count = 0
  for i in 1..n do
    for j in i+1..n do
      for k in j+1..n do
        count += 1 if i + j + k == x
      end
    end
  end
  puts count
end
