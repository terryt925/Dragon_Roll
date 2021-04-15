import {
  RECEIVE_ALL_ANIME,
  RECEIVE_ANIME
} from '../actions/anime_actions';


const animeReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_ANIME:
      return Object.assign({}, action.animes)
    case RECEIVE_ANIME:
      return Object.assign({}, state, action.anime )
    default:
      return state;
  }
};

export default animeReducer;