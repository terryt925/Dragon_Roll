import {
  RECEIVE_EPISODE
} from '../actions/episode_actions';
import {RECEIVE_ANIME} from '../actions/anime_actions';


const episodeReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ANIME:
      return Object.assign({}, state, action.anime.episodes)
    case RECEIVE_EPISODE:
      return Object.assign({}, state, { [action.episode.id]: action.episode })
    default:
      return {};
  }
};

export default episodeReducer;