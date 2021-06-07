import {combineReducers} from 'redux';

import users from './user_reducer';
import animes from './anime_reducer';
import episodes from './episode_reducer';
import bookmarks from './bookmark_reducer';

const entitiesReducer = combineReducers({
  users,
  animes,
  episodes,
  bookmarks
});

export default entitiesReducer;