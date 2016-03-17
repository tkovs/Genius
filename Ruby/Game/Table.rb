class Table
    def initialize
        @points = 0
        @combination = Array.new
        @colors = ['Red', 'Green', 'Yellow', 'Blue']
    end

    def add
        @combination.push(@colors[rand(4)])
    end

    def hit
        @points += 1
    end

    def started?
        return !@combination.empty?
    end

    def last_color
        return @combination[-1]
    end

    def score
        return @points
    end

    def sequence
        return @combination
    end
end
