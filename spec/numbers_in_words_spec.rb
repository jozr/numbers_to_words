require ('rspec')
require ('numbers_in_words')

describe('numbers_in_words') do
  it('returns ten for the input of 10') do
    numbers_in_words(10).should(eq('ten'))
  end
end
