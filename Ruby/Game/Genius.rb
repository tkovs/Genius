require_relative 'Table'

class Genius
    def initialize
        @table = Table.new(%w[Red Green Yellow Blue]);
    end

    def color_input
        @table.sequence.each_with_index do |color, index|
            print "Color with index #{index}:\n> "
            input = gets.chomp

            return false unless color.downcase.eql?(input.downcase)
        end

        @table.hit
        return true
    end

    def game_loop
        begin
            unless @table.started?
                puts '-- Starting round --'
            else
                puts "-- Points: #{@table.score} --"
            end

            @table.add
            puts "Last color: #{@table.last_color}"
        end while color_input
    end

    def play
        game_loop

        puts "You did #{@table.score} points!"
    end
end
