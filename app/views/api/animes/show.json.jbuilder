json.animes do
  json.set! @anime.id do
    json.extract! @anime, :id, :title, :synopsis
  end
end

# animes: { id: {anime}}


# json.episodes
