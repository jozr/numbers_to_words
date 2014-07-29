require ('rspec')
require ('numbers_in_words')

describe('numbers_in_words') do
  it('returns ten for the input of 10') do
    numbers_in_words("10").should(eq("ten"))
  end

  it('returns fourteen for the input of 14') do
    numbers_in_words("14").should(eq("fourteen"))
  end

  it('returns twenty nine for the input of 29') do
    numbers_in_words("29").should(eq("twenty-nine"))
  end

  it('returns three hundred forty six for the input of 346') do
    numbers_in_words("346").should(eq("three hundred forty-six"))
  end

  it('returns ten thousand thirty four for the input of 1034') do
    numbers_in_words("10,034").should(eq("ten thousand thirty-four"))
  end

  it('returns one billion three hundred million seventy thousand seven for the input of 1300070007') do
    numbers_in_words("1,300,070,007").should(eq("one billion three hundred million seventy thousand seven"))
  end
end
