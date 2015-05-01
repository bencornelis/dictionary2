require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/success') do
  @new_word = Word.new({:word => params.fetch('word')})
  erb(:success)
end

get('/words/new') do
  erb(:word_form)
end
