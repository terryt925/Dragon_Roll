import { connect } from 'react-redux';
import { requestAnimes } from '../../actions/anime_actions'
import AnimeIndex from './anime_index';
import { requestBookmarks} from '../../actions/bookmark_actions';


const mSTP = (state) => ({
  animes: Object.values(state.entities.animes)
})

const mDTP = (dispatch) => ({
  requestAnimes: () => dispatch(requestAnimes()),
  requestBookmarks: () => dispatch(requestBookmarks())

})

export default connect(mSTP, mDTP)(AnimeIndex);