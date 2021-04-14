# json.anime do
    # json.set! @anime.id do
        json.extract! @anime, :id, :title, :synopsis
            if @anime.photo.attached?
                json.photo_url url_for(@anime.photo)
            else
                json.photo_url ''
        end
    # end
# end



json.episodes do
    @anime.episodes.each do |episode|
        json.set! episode.id do
            json.extract! episode, :id, :title, :video_link
            if episode.photo.attached?
                json.photo_url url_for(episode.photo)
            else
                json.photo_url ""
            end
        end
    end
end

