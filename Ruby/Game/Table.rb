class Table
    attr_reader(:sequence, :colors, :points)

    def initialize
        @points = 0
        @sequence = Array.new
        @colors = ['Red', 'Green', 'Yellow', 'Blue']
    end

    def add
        @sequence.push(@colors[rand(4)])
    end

    def hit
        @points += 1
    end

    def started?
        return !@sequence.empty?
    end

    def last_color
        return @sequence[-1]
    end

    def score
        return @points
    end
end
