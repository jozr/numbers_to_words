def numbers_in_words(input)
  input_s_array = input.split(',')

  ones = {'1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight', '9' => 'nine'}
  teens = {'10' => 'ten', '11' => 'eleven', '12' => 'twelve', '13' => 'thirteen', '14' => 'fourteen', '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen', '18' => 'eighteen', '19' => 'nineteen'}
  tens = {'2' => 'twenty', '3' => 'thirty', '4' => 'forty', '5' => 'fifty', '6' => 'sixty', '7' => 'seventy', '8' => 'eighty', '9' => 'ninety'}

  input_arr = []
  result = ""

  input_s_array.each do  |threes|
    input_arr << threes
  end

  store_length = input.length

  input_arr.each do  |threes|
    if threes.length > 2
      ones.each do  |key, val|
        if threes[0] == key
          result += val + " "
        end
      end
      if threes.length == 3 && threes[0] >= '1'
        result += "hundred" + " "
      end
      threes.slice!(0)
    end

    if threes.length == 2 && threes[0] != '1'
      tens.each do  |key, val|
        if threes[0] == key && threes[1] != 0
          result += val + "-"
        end
      end
      ones.each do  |key, val|
        if threes[1] == key
          result += val + " "
        end
      end
    elsif threes.length == 2 && threes[0] == '1'
      teens.each do  |key, val|
        if threes == key
          result += val + " "
        end
      end
    elsif threes.length == 1
      ones.each do  |key, val|
        if threes == key
          result += val + " "
        end
      end
    end
    if store_length == 17
      result += 'trillion '
      store_length -=3
    elsif store_length >= 13 && store_length <= 15
      result += 'billion '
      store_length -=3
    elsif store_length >= 9 && store_length <= 11
      result += 'million '
      store_length -=4
      p store_length
    elsif store_length >= 5 && store_length <= 7
      result += 'thousand '
      store_length -=3
    end
  end

result.slice!(result.length-1)
p result

end

