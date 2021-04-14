import * as APIUtil from '../utils/episodes';

export const RECEIVE_ALL_EPISODES = 'RECEIVE_ALL_EPISODES';
export const RECEIVE_EPISODE = 'RECEIVE_EPISODE';

const receiveAllEpisodes = episodes => ({
  type: RECEIVE_ALL_EPISODES,
  episodes
})

const receiveEpisode = episode => ({
  type: RECEIVE_EPISODE,
  episode
})


export const requestEpisodes = () => dispatch => (
  APIUtil.fetchEpisodes()
    .then(events => dispatch(receiveAllEpisodes(events)))
)

export const requestEpisode = (episodeId) => dispatch => (
  APIUtil.fetchEpisode(episodeId)
    .then(episode => dispatch(receiveEpisode(episode)))
)