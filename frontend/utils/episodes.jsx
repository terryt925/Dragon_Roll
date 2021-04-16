
export const fetchEpisodes = () => (
  $.ajax({
    method: 'GET',
    url: '/api/episodes'
  })
)

export const fetchEpisode = (episodeId) => (
  $.ajax({
    method: 'GET',
    url: `/api/episodes/${episodeId}`
  })
)
