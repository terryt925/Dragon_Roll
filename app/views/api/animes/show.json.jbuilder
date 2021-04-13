json.animes do
  json.set! @anime.id do
    json.extract! @anime, :id, :title, :synopsis
  end
end

# animes: { id: {anime}}


json.episodes do
    @anime.episodes.each do |episode|
        json.set! episode.id do
            json.extract! episode, :id, :title, :video_link
        end
    end
end

     # if episode.thumbnail.attached?
            #     json.photo_url url_for(episode.thumbnail)
            # else
            #     json.photo_url ""
            # end