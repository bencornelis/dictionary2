class Word
  @@words = []
  attr_reader(:string_form, :definitions)

  define_method(:initialize) do |attributes|
    @string_form = attributes[:string_form]
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

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |word_string|
    @@words.each() do |word|
      if word.string_form() == word_string
        return word
      end
    end
  end

end
