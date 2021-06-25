import {connect} from 'react-redux';
import { 
  requestBookmarks, 
  requestBookmark, 
  removeBookmark
} from '../../actions/bookmark_actions';
import Bookmark from './bookmark';
import { deleteBookmark } from '../../actions/bookmark_actions';
import { createBookmark } from '../../actions/bookmark_actions';

const mSTP = (state) => ({
  bookmarks: Object.values(state.entities.bookmarks)
})

const mDTP = (dispatch) => ({
  requestBookmarks: () => dispatch(requestBookmarks()),
  requestBookmark: (bookmarkId) => dispatch(requestBookmark(bookmarkId)),
  removeBookmark: (bookmarkId) => dispatch(removeBookmark(bookmarkId)),
  deleteBookmark: (bookmarkId) => dispatch(deleteBookmark(bookmarkId)),
  createBookmark: (bookmark) => dispatch(createBookmark(bookmark)),

})

export default connect(mSTP, mDTP)(Bookmark);