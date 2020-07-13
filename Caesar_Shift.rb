def caeser_shift (line, factor)
  result = ''
  if factor>26 or factor<-26
    factor = factor%26
  end
  x = line.split('')
  x.each do |alphabet|
    # obtaining ascii value of letter
    asci = alphabet.ord
    new_pos = asci + factor
    # checking for Out of Bounds if Upper Case
    if asci>64 && asci<91 && new_pos>90
      new_pos = new_pos-90+65
    elsif asci>64 && asci<91 && new_pos<65
        new_pos = new_pos-65+90
    # checking for Out of Bounds if Lower Case
    elsif asci>96 && asci<123 && new_pos>122
      new_pos = new_pos-122+97
    elsif asci>96 && asci<123 && new_pos<97
      new_pos = new_pos-97+122
    # checking for space
    elsif  asci == 32
      new_pos = asci
    end
    result = result + new_pos.chr
  end
  return result
end
puts ("Enter your line that you want to perform Caesar Shift on")
line = gets.chomp
puts ("Enter your Shift Factor")
factor = (gets.chomp).to_i
puts caeser_shift(line,factor)
