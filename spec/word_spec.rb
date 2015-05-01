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
    it('is empty at first') do
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

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a word to the words array') do
      test_word = Word.new({:word => 'run'})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end
end
