require('sinatra')
require('pry')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

sphinx = Sphinx.new("placeholder", "placeholder")
sphinx.pick_question

get('/') do
  @question = sphinx.question
  erb(:input)
end

post('/output') do

  answer1 = params.fetch("answer1")
  answer2 = params.fetch("answer2")

  sphinx.answer = [answer1].push(answer2)

  if sphinx.riddle?
    @what_happens = "YOu live"
  else
    @what_happens = "dead"
  end

  erb(:output)
end
