names = ["Alex", "Jim", "Michael"];
d2_array = [
    ["Alex", "Holly", "Lauren", "Jeremy"],
    ["Griffiths", "Vincent", "Bird", "Nash"]
]
names.each do |name|
    puts "Hello, " + name;
end

d2_array.each do |x_arr|
    x_arr.each do |y_arr|
        puts y_arr;
    end
end

# Come back to this.
words_array = [];
while gets.chomp != "\n"
    words_array.push(gets.chomp);
end

words_array.sort;
words_array.each do |word|
    puts word;
end