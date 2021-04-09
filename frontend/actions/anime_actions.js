import * as APIUtil from '../utils/anime';

export const RECEIVE_ALL_ANIME = 'RECEIVE_ALL_ANIME';
export const RECEIVE_ANIME = 'RECEIVE_ANIME';

const receiveAllAnime = animes => ({
  type: RECEIVE_ALL_ANIME,
  animes
})

const receiveAnime = anime => ({
  type: RECEIVE_ANIME,
  anime
})


export const requestAnimes = () => dispatch => (
  APIUtil.fetchAnimes()
    .then(events => dispatch(receiveAllAnime(events)))
)

export const requestAnime = (animeId) => dispatch => (
  APIUtil.fetchAnime(animeId)
    .then(anime => dispatch(receiveAnime(anime)))
)