# [
#   {
#     "id": 1,
#     "number": 1,
#     "name": "Bulbasaur",
#     "imageUrl": "/images/pokemon_snaps/1.svg",
#     "captured": true
#   },
#   // ...
# ]

json.array! @pokemons do |pokemon|
    json.extract! pokemon, :id, :number, :captured 
    if pokemon.captured
        json.image_url pokemon.image_url
    else 
        json.image_url "/images/unknown.png"
    end
end