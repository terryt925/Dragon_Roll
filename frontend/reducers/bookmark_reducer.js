import {
  RECEIVE_ALL_BOOKMARKS,
  RECEIVE_BOOKMARK,
  REMOVE_BOOKMARK
} from '../actions/bookmark_actions';

const bookmarkReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);
  switch (action.type) {
    case RECEIVE_ALL_BOOKMARKS:
      return Object.assign({}, action.bookmarks)
    case RECEIVE_BOOKMARK:
      return Object.assign({}, state, action.bookmark)
    case REMOVE_BOOKMARK:
      // delete nextState[action.bookmarkId];
      // delete nextState[action.bookmarkId];
      // console.log(action.bookmarkId);
      return action.bookmarkId;
    default:
      return state
  }
}

export default bookmarkReducer;