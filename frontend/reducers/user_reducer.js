import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { LOGOUT_CURRENT_USER } from '../actions/session_actions';


const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return Object.assign({}, state, { [action.currentUser.id]: action.currentUser });
      // return action.currentUser;
    case LOGOUT_CURRENT_USER:
      return {};
    default:
      return state;
  }
};

export default usersReducer;
