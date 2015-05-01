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
  @new_word = Word.new({:string_form => params.fetch('word')})
  @new_word.save()
  erb(:success)
end

get('/words/new') do
  erb(:word_form)
end

get('/words/:word') do
  @word = Word.find(params.fetch('word'))
  erb(:word)
end
