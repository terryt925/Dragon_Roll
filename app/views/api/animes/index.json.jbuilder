
  @animes.each do |anime|
      json.set! anime.id do
          json.extract! anime, :id, :title, :synopsis
      end
    end 

# animes: { 1: {anime1}, 2: {anime2}}
