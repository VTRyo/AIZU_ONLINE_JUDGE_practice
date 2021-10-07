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
end

numbers = gets.split.map(&:to_i)
n = gets.to_i

dice = Dice.new(numbers)
n.times do
  top, front = gets.chomp.split.map(&:to_i)
  puts dice.find_right_face(top, front)
end
