def numbers_in_words(input)
  library = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten'}
  result = ''

  library.each do  |key, val|
    if input == key
      result = val
    end
  end
  p result
end

numbers_in_words(10)

