import { combineReducers } from 'redux';

import session from './session_error_reducer';

const errorsReducer = combineReducers({
  session
});

export default errorsReducer;