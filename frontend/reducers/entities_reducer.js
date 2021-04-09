import {combineReducers} from 'redux';

import users from './user_reducer';
import animes from './anime_reducer';

const entitiesReducer = combineReducers({
  users,
  animes
});

export default entitiesReducer;