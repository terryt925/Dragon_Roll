import {combineReducers} from 'redux';

import users from './user_reducer';

const entitiesReducer = combineReducers({
  users
});

export default entitiesReducer;