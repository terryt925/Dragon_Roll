import {
  RECEIVE_ALL_EPISODES,
  RECEIVE_EPISODE
} from '../actions/episode_actions';


const episodeReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_EPISODES:
      return Object.assign({}, state, action.episodes)
    case RECEIVE_EPISODE:
      return Object.assign({}, state, { [action.episode.id]: action.episode })
    default:
      return state;
  }
};

export default episodeReducer;