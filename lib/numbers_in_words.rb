def numbers_in_words(input)
  input_arr = input.split(',') #splits input based on commas from input, creates strings of three

  ones = {'1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight', '9' => 'nine'}
  teens = {'10' => 'ten', '11' => 'eleven', '12' => 'twelve', '13' => 'thirteen', '14' => 'fourteen', '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen', '18' => 'eighteen', '19' => 'nineteen'}
  tens = {'2' => 'twenty', '3' => 'thirty', '4' => 'forty', '5' => 'fifty', '6' => 'sixty', '7' => 'seventy', '8' => 'eighty', '9' => 'ninety'}

  store_length = input.length #stores the length of the original input string
  result = "" #stores the results
  #example: 467
  input_arr.each do  |threes| #cycle through sets of threes in input_arr
    if threes.length > 2
      result += ones[threes[0]] + ' ' unless threes[0] == '0'

      if threes.length == 3 && threes[0] >= '1' #will return hundred ex:4
        result += "hundred" + " "
      end
      threes.slice!(0) #deprecating first character in threes to evaluate ones and tens values ex: returns 67
    end
    #evaluate for ones and tens
    if threes.length == 2 && threes[0] != '1' #to account for teens
      tens.each do  |key, val| #cycle through tens to match key in position 0
        if threes[0] == key && threes[1] == '0' #if position 1 = 0, return space
          result += val + " "
        elsif threes[0] == key #if position 1 != 0, return hyphen ex: sixty-
          result += val + "-"
        end
      end
      result += ones[threes[1]] + ' ' unless threes[1] == '0'
      # ones.each do  |key, val| #evaluates ones position
      #   if threes[1] == key
      #     result += val + " " #return space if over 1000
      #   end
      # end
    elsif threes.length == 2 && threes[0] == '1' #evaluates for teens
      result += teens[threes] + ' '
    elsif threes.length == 1 #evaluates for ones
      result += ones[threes] + ' '
    end
    #for inserting denomination
    if store_length == 17
      result += 'trillion '
      store_length -=4
    elsif store_length >= 13 && store_length <= 15
      result += 'billion '
      store_length -=4
    elsif store_length >= 9 && store_length <= 11
      result += 'million '
      store_length -=4
      p store_length
    elsif store_length >= 5 && store_length <= 7
      result += 'thousand '
      store_length -=4
    end
  end
  result.slice!(result.length-1)
  p result
end

numbers_in_words("1,100,357,354,323")
