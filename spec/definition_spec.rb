require('rspec')
require('definition')

describe(Definition) do
  describe('#part_of_speech') do
    it('returns the part of speech in the definition') do
      test_definition = Definition.new({:part_of_speech => 'verb'})
      expect(test_definition.part_of_speech()).to(eq('verb'))
    end
  end

  describe('#statement') do
    it('returns the meaning of the word') do
      test_definition = Definition.new({:statement => 'set to the value'})
      expect(test_definition.statement()).to(eq('set to the value'))
    end
  end
end
