class Dice
  @surface = nil

  def initialize(numbers)
    @surface = numbers
  end

  def top
    @surface[0]
  end

  def move(command)
    s = @surface.dup
    case command
      when "N"
        @surface = [s[1], s[5], s[2], s[3], s[0], s[4]]
      when "S"
        @surface = [s[4], s[0], s[2], s[3], s[5], s[1]]
      when "W"
        @surface = [s[2], s[1], s[5], s[0], s[4], s[3]]
      when "E"
        @surface = [s[3], s[1], s[0], s[5], s[4], s[2]]
    end
  end

  def find_right_face(top, front)
    "WNWNW".each_char {|s|
      break if @surface[0] == front
      move(s)
    }
    move("S")
    "WWW".each_char { |s|
      break if @surface[0] == top
      move(s)
    }
    @surface[2]
  end

  def same?(other_surface)
    return true if @surface == other_surface
    "WWWWSWWWWSWWWWSWWWWSWSWWWWSSWWW".each_char { |s| #回転パターンはヒントもらいました。。。
      move(s)
      return true if @surface == other_surface
    }
    return false
  end
end

n = gets.to_i
numbers = []
same = false
n.times do
  numbers << gets.split.map(&:to_i)
end
p numbers
for i in 0...n-1 do
  for j in i+1...n do
    # 多次元配列の要素をそれぞれ検証する
    # ex) [[1, 2, 3, 4, 5, 6], [6, 5, 4, 3, 2, 1], [5, 4, 3, 2, 1, 6]]
    if Dice.new(numbers[i]).same?(numbers[j])
      same = true
      break
    end
  end
end

if same
  puts "No"
else
  puts "Yes"
end
