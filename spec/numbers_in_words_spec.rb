require ('rspec')
require ('numbers_in_words')

describe('numbers_in_words') do
  it('returns ten for the input of 10') do
    numbers_in_words(10).should(eq('ten'))
  end

  it('returns fourteen for the input of 14') do
    numbers_in_words(14).should(eq('fourteen'))
  end

  it('returns twenty nine for the input of 29') do
    numbers_in_words(29).should(eq('twentynine'))
  end
end
