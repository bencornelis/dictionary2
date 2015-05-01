class Word
  attr_reader(:word, :definitions)

  define_method(:initialize) do |attributes|
    @word = attributes[:word]
    @definitions = []
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end
end
