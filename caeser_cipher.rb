def caesar_cipher(input_string, shift_factor)
    output = "";
    string_array = input_string.split("");
    string_array.each do |letter|
        # Get the ASCII position of the current letter, and increase that value by the shift factor.
        new_letter_pos = letter.ord + shift_factor;
        diff = 0;
        if (letter.ord) > 64 && (letter.ord) < 91 && new_letter_pos > 90
            # Handle upper case letters that go beyond the bounds of the upper case alphabet.
            diff = new_letter_pos - 90;
            new_letter_pos = 65 + diff;
        elsif (letter.ord) > 96 && (letter.ord) < 123 && new_letter_pos > 122
            # Handle lowercase letters that go beyond the bounds of the lower case alphabet.
            diff =  new_letter_pos - 122;
            new_letter_pos =  97 + diff;
        elsif letter.ord == 32
            # Don't shift spaces.
            new_letter_pos = letter.ord;
        end
        output += new_letter_pos.chr;
    end

    return output;
end