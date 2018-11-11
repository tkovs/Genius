require_relative 'table'

class Genius
    def initialize
        @table = Table.new(%w[Vermelho Verde Amarelo Azul]);
    end

    def color_input
        @table.sequence.each_with_index do |color, index|
            print "Cor de índice #{index}:\n> "
            input = gets.chomp

            return false unless color.downcase.eql?(input.downcase)
        end

        @table.hit
        return true
    end

    def game_loop
        begin
            system "clear" or  system "cls"

            unless @table.started?
                puts "-- Round inicial --"
            else
                puts "-- Pontos: #{@table.score} --"
            end

            @table.add
            puts "Cor sorteada: #{@table.last_color}"
        end while color_input
    end

    def play
        game_loop

        puts "Você conseguiu #{@table.score} pontos!"
    end
end
