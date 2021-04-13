
@episodes.each do |episode|
  json.set! episode.id do
      json.extract! episode, :id, :title, :video_link
  end
end 

      
      # if episode.photo.attached?
      #   json.photo_url url_for(episode.photo)
      # else
      #   json.photo_url ''
      # end