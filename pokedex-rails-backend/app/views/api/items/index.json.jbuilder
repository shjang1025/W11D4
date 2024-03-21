# ```json
# [
#   {
#     "id": 1,
#     "happiness": 86,
#     "imageUrl": "/images/pokemon_potion.svg",
#     "name": "Awesome Plastic Pizza",
#     "price": 27,
#     "pokemonId": 1
#   },
#   // ...
# ]
# ```
json.array! @items do |item|

    json.extract! item, :id, :happiness, :image_url, :name, :price, :pokemon_id

end
