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
end

numbers = gets.split.map(&:to_i)
commands = gets.chomp

dice = Dice.new(numbers)
commands.each_char {
  |s| dice.move(s)
}
puts dice.top
