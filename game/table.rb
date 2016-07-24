class Table
    def initialize(items)
        @points = 0
        @combination = Array.new
        @items  = items
    end

    def add
        @combination.push(@items.sample)
    end

    def hit
        @points += 1
    end

    def started?
        !@combination.empty?
    end

    def last_color
        @combination.last
    end

    def score
        @points
    end

    def sequence
        @combination
    end
end
