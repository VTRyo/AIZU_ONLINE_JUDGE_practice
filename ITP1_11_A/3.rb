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

x = gets.split.map(&:to_i) # Dice1
y = gets.split.map(&:to_i) # Dice2

dice1 = Dice.new(x)
if dice1.same?(y)
  puts "Yes"
else
  puts "No"
end
