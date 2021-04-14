import {combineReducers} from 'redux';

import users from './user_reducer';
import animes from './anime_reducer';
import episodes from './episode_reducer';

const entitiesReducer = combineReducers({
  users,
  animes,
  episodes
});

export default entitiesReducer;