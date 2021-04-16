
export const fetchAnimes = () => (
  $.ajax({
    method: 'GET',
    url: '/api/animes'
  })
)

export const fetchAnime = (animeId) => (
  $.ajax({
    method: 'GET',
    url: `/api/animes/${animeId}`
  })
)

// $.ajax({
//   method: 'GET',
//   url: '/api/animes/0'
// })