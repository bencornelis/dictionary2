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

  describe('#add_definition') do
    it('adds a definition to the definition list') do
      test_word = Word.new({:word => 'run'})
      test_definition = Definition.new({:part_of_speech =>'verb',
        :meaning => 'move at a speed faster than a walk'})
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end
end
