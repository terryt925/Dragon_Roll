import { connect } from 'react-redux';
import { requestAnime } from '../../actions/anime_actions'
import { createBookmark } from '../../actions/bookmark_actions';
import EpisodeIndex from './anime_show';
import { requestEpisode } from '../../actions/episode_actions';
import { deleteBookmark } from '../../actions/bookmark_actions';
// import { requestBookmarks} from '../../actions/bookmark_actions';


const mSTP = (state) => ({
  anime: state.entities.animes,
  episodes: Object.values(state.entities.episodes),
  // userId: state.entities.users[1].id,
  bookmark: {
    user_id: state.entities.users[1].id,
    anime_id: state.entities.animes.id
  },
  userBookmarks: Object.values(state.entities.bookmarks),
})


const mDTP = (dispatch) => ({
  requestAnime: (animeId) => dispatch(requestAnime(animeId)),
  requestEpisode: (episodeId) => dispatch(requestEpisode(episodeId)),
  createBookmark: (bookmark) => dispatch(createBookmark(bookmark)),
  deleteBookmark: (bookmarkId) => dispatch(deleteBookmark(bookmarkId)),
  // requestBookmarks: () => dispatch(requestBookmarks())

})

export default connect(mSTP, mDTP)(EpisodeIndex);