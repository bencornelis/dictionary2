class Definition
  attr_reader(:part_of_speech, :statement)

  define_method(:initialize) do |attributes|
    @part_of_speech = attributes[:part_of_speech]
    @statement = attributes[:statement]
  end
end
