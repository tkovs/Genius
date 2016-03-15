class Genius
    Sequence = Struct.new(:index, :color)
    attr_reader(:sequence, :points)

    def initialize
        @sequence = Array.new
        @points = 0
    end

    def rand_color
        color = rand(4)

        return 'Red'    if color.eql?(0)
        return 'Green'  if color.eql?(1)
        return 'Yellow' if color.eql?(2)
        return 'Blue'   if color.eql?(3)
    end

    def add_color
        index = 1
        index = (@sequence.last.index + 1) unless @sequence.empty?

        @sequence.push(Sequence.new(index, rand_color))
    end

    def color_input
        @sequence.each do |element|
            puts 'Color with index ' + element.index.to_s + ':'
            input = gets.chomp
            success = element.color.downcase.eql?(input.downcase)

            return false unless success.eql?(true)
        end

        return true
    end

    def game_loop
        begin
            if (@sequence.empty?)
                puts '-- Starting round --'
            else
                @points += 1
                puts 'Points: ' + @points.to_s
            end

            add_color
            puts 'Last color: ' + @sequence.last.color
            success = color_input
        end while success
    end

    def play
        game_loop

        puts 'You did ' + @points.to_s
        puts 'Press anything to continue Genius Game'
        gets
        initialize and self.play
    end
end