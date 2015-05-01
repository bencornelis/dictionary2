require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/success') do
  @word = Word.new({:string_form => params.fetch('word')})
  @new_word = Word.find(@word.string_form()) == nil
  if @new_word
    @word.save()
  end
  erb(:success)
end

get('/words/new') do
  erb(:word_form)
end

get('/words/:string_form') do
  @word = Word.find(params.fetch('string_form'))
  erb(:word)
end

post('/words/:string_form') do
  part_of_speech = params.fetch('part_of_speech')
  meaning = params.fetch('meaning')
  new_definition = Definition.new({:part_of_speech => part_of_speech, :meaning => meaning})
  @word = Word.find(params.fetch('string_form'))
  @word.add_definition(new_definition)
  erb(:word)
end

get('/words/:string_form/definitions/new') do
  @string_form = params.fetch('string_form')
  erb(:definition_form)
end
