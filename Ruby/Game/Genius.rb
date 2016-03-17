require_relative 'Table'

class Genius
    attr_reader(:table)

    def initialize
        @table = Table.new
    end

    def color_input
        success = false

        @table.sequence.each_with_index do |color, index|
            puts 'Color with index ' + index.to_s + ':'
            input = gets.chomp
            success = color.downcase.eql?(input.downcase)

            break if success.eql?(false)
        end

        return success
    end

    def game_loop
        begin
            if !@table.started? then
                puts '-- Starting round --'
            else
                puts 'Points: ' + @table.score.to_s
            end

            @table.add
            puts 'Last color: ' + @table.last_color
            success = color_input
            @table.hit if success.eql?(true)
        end while success
    end

    def play
        game_loop

        puts 'You did ' + @table.score.to_s
    end
end
