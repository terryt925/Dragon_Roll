

# json.episodes do
#     @anime.episodes.each do |episode|
#         json.set! episode.id do
#             json.extract! episode, :id, :title, :video_link
#         end
#     end
# end
json.episodes do 
  json.extract! @episode, :id, :title, :video_link
end