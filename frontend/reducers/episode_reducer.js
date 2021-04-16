import {
  RECEIVE_EPISODE
} from '../actions/episode_actions';
import {RECEIVE_ANIME} from '../actions/anime_actions';


const episodeReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state)
  switch (action.type) {
    case RECEIVE_ANIME:
      return Object.assign({}, action.anime.episodes)
    case RECEIVE_EPISODE:
      nextState[action.episode.episodes.id] = action.episode.episodes
      return nextState
    default:
      return {};
  }
};

export default episodeReducer;