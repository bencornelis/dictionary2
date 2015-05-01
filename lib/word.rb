class Word
  attr_reader(:word, :definitions)

  define_method(:initialize) do |attributes|
    @word = attributes[:word]
    @definitions = []
  end
end
