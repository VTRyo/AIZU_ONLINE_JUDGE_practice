# 入力されたS 1などの組み合わせにHashでKeyをもたせておく
# 入力されたものにはKeyがあるので、そのKeyをチェックしてTrueだけを表示する
# ※どうしてもロジックがわからなかったので別ユーザの回答を参考にした

list = ["S", "H", "C", "D"]
n = gets.to_i
h = {}
n.times do 
  s = gets
  h[s.chomp] = 1
end

for var in list do
  for i in 1..13 do
    petterns = (var+" "+i.to_s) # S 1など
    puts "#{var} #{i}" unless h.has_key?(petterns) # hashのKeyを持っていないものを表示する
  end
end
