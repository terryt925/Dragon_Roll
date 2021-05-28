import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import { deleteBookmark } from './actions/bookmark_actions';
// import {createBookmark} from './actions/bookmark_actions';
// import { requestBookmarks } from './actions/bookmark_actions';


document.addEventListener('DOMContentLoaded', () => {
  let store;

  if (window.currentUser) {
    const preloadedState = {
      session: { id: window.currentUser.id },
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // window.createBookmark = createBookmark;
  // window.deleteBookmark = deleteBookmark;
  // window.requestBookmarks = requestBookmarks;
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});