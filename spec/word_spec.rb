require('rspec')
require('definition')
require('word')

describe(Word) do
  describe('#word') do
    it('returns the word') do
      test_word = Word.new({:word => 'run'})
      expect(test_word.word()).to(eq('run'))
    end
  end

  describe('#definitions') do
    it('returns a list of definitions of the word') do
      test_word = Word.new({:word => 'run'})
      expect(test_word.definitions()).to(eq([]))
    end
  end
end
