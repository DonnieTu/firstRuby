require 'movie'
require 'yaml/store'

store=YAML::Store.new('test.yml')
    movies=[]
    movies[0]=Movie.new
    movies[0].title="Jaws"
    movies[0].director="Hayao"
    movies[0].year=2001
    movies[1]=Movie.new
    movies[1].title="Alien"
    movies[1].director="Christoper"
    movies[1].year=2002
store.transaction do
    store["Jaws"]=movies[0]
    store["Alien"]=movies[1] 
end