# {
#   "imageUrl": "/images/pokemon_snaps/1.svg",
#   "id": 1,
#   "number": 1,
#   "attack": 49,
#   "defense": 49,
#   "name": "Bulbasaur",
#   "type": "grass",
#   "moves": [
#     "tackle",
#     "vine whip"
#   ],
#   "captured": true,
#   "createdAt": "2020-12-16T01:17:24.119Z",
#   "updatedAt": "2020-12-16T01:17:24.119Z"
# }

if @pokemon.captured
    json.image_url @pokemon.image_url
else
    json.image_url "/images/unknown.png"
end
json.partial! 'pokemon', pokemon: @pokemon
json.type @pokemon.poke_type
json.moves (@pokemon.moves.map do |move|
    move.name
end)
