
@animes.each do |anime|
  json.set! anime.id do
      json.extract! anime, :id, :title, :synopsis
      if anime.photo.attached?
        json.photo_url url_for(anime.photo)
      else
        json.photo_url ''
      end
  end
end 

# animes: { 1: {anime1}, 2: {anime2}}
