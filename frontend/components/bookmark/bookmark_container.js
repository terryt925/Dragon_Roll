import {connect} from 'react-redux';
import { 
  requestBookmarks, 
  requestBookmark, 
  removeBookmark
} from '../../actions/bookmark_actions';
import Bookmark from './bookmark';

const mSTP = (state) => ({
  bookmarks: Object.values(state.entities.bookmarks)
})

const mDTP = (dispatch) => ({
  requestBookmarks: () => dispatch(requestBookmarks()),
  requestBookmark: (bookmarkId) => dispatch(requestBookmark(bookmarkId)),
  removeBookmark: (bookmarkId) => dispatch(removeBookmark(bookmarkId))
})

export default connect(mSTP, mDTP)(Bookmark);