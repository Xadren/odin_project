def substrings(string, dictionary)
    substring_hash = Hash.new(0);
    string.split(" ").each do |string|
        dictionary.each do |word, index|
            # Search for the dictionary word in the string.
            # If it exists add it to the hash of substrings.
            # I do this by checking that match is not nil which
            # means there is an occurance of the dictionary word
            # in the string. Then I check if there is an instance
            # of the matched word in the substring_hash.
            # If there isn't, I create a new instance of it,
            # otherwise I just increment the value of the matched word.
            match = /#{word}/.match(string.downcase);
            if( match != nil)
                substring_hash[match[0]] += 1;
            end
        end
    end

    puts substring_hash;
end

dictionary = ["below", "down", "go", "going", "horn", "howdy", "it", "how"];
substrings("How's it going below the sea go?", dictionary);