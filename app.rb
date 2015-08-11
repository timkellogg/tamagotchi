require('sinatra')
require('sinatra/contrib')
require('./lib/tamagotchi')

get('/') do
  erb(:index)
end

post('/tamagotchi') do
  $name = params.fetch("name")
  $my_pet = Tamagotchi.new(name)
  erb(:play)
end

get('play') do

  begin
    $name    = params.fetch('name')
    feed     = params.fetch('feed')
    play     = params.fetch('play')
    is_alive = params.fetch('is_alive')
    sleep    = params.fetch('sleep')
    erb(:play)
  rescue => e
    $name    = params.fetch('name')
    feed     = params.fetch('feed')
    play     = params.fetch('play')
    is_alive = params.fetch('is_alive')
    sleep    = params.fetch('sleep')
    erb(:play)
  end
end

post('/play') do
  begin
    $name    = params.fetch('name')
    feed     = params.fetch('feed')
    play     = params.fetch('play')
    is_alive = params.fetch('is_alive')
    sleep    = params.fetch('sleep')
    erb(:play)
  rescue => e
    $name    = params.fetch('name')
    feed     = params.fetch('feed')
    play     = params.fetch('play')
    is_alive = params.fetch('is_alive')
    sleep    = params.fetch('sleep')
    erb(:play)
  end
end
