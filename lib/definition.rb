class Definition
  attr_reader(:part_of_speech, :meaning)

  define_method(:initialize) do |attributes|
    @part_of_speech = attributes[:part_of_speech]
    @meaning = attributes[:meaning]
  end
end
