import * as APIUtil from '../utils/bookmark';

export const RECEIVE_ALL_BOOKMARKS = 'RECEIVE_ALL_BOOKMARKS';
export const RECEIVE_BOOKMARK = 'RECEIVE_BOOKMARK';
export const REMOVE_BOOKMARK = 'REMOVE_BOOKMARK';

const receiveAllBookmarks = bookmarks => ({
  type: RECEIVE_ALL_BOOKMARKS,
  bookmarks
})

const receiveBookmark = bookmark => ({
  type: RECEIVE_BOOKMARK,
  bookmark
})

const removeBookmark = bookmarkId => ({
  type: REMOVE_BOOKMARK,
  bookmarkId
})

export const requestBookmarks = () => dispatch => (
  APIUtil.fetchBookmarks()
    .then(bookmarks => dispatch(receiveAllBookmarks(bookmarks)))
)

export const requestBookmark = (bookmarkId) => dispatch => (
  APIUtil.fetchBookmark(bookmarkId)
    .then(bookmark => dispatch(receiveBookmark(bookmark)))
)

export const createBookmark = (bookmark) => dispatch => (
  APIUtil.createBookmark(bookmark)
    .then(bookmark => dispatch(receiveBookmark(bookmark)))
)

export const updateBookmark = (bookmark) => dispatch => (
  APIUtil.updateBookmark(bookmark)
    .then(bookmark => dispatch(receiveBookmark(bookmark)))
)

export const deleteBookmark = (bookmarkId) => dispatch => (
  APIUtil.deleteBookmark(bookmarkId)
    .then(() => dispatch(removeBookmark(bookmarkId)))
)