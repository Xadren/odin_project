class Integer
    def to_e
        if self == 5
            english = "five";
        else
            english = "fifty-eight"
        end

        return english;
    end
end

puts 5.to_e;
puts 58.to_e;

class Die
    def initialize(die_size)
        @size = die_size;
        @rolled_value = nil;
        roll;
    end

    def roll
        @rolled_value = 1 + rand(@size);
    end 

    def showing 
        return @rolled_value;
    end

end

d20 = Die.new(20);

puts d20.showing;
