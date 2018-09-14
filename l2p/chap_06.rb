puts 1 > 2;
puts 1 < 2;
    if 1 > 3 && 2 > 5
        puts "That's not right";
    else
        puts "That's correct";
    end

bottle_count = 99;

while bottle_count > 0
    puts bottle_count.to_s + " bottles of beer on the wall! " + bottle_count.to_s + " bottles of beer!";
    puts "You take one down, you pass it arround; " + (bottle_count - 1 == 0 ? "No more" : (bottle_count-1).to_s) + " bottles of beer on the wall";
    bottle_count -= 1;
end