class Word
  @@words = []
  attr_reader(:word, :definitions)

  define_method(:initialize) do |attributes|
    @word = attributes[:word]
    @definitions = []
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:all) do
    @@words
  end

end
