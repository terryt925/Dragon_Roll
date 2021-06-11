import {connect} from 'react-redux';
import { requestAnimes } from '../../actions/anime_actions';
import Search from './search';
import { requestAnime } from '../../actions/anime_actions'


const mSTP = (state) => ({
  animes: Object.values(state.entities.animes)
})

const mDTP = (dispatch) => ({
  requestAnimes: () => dispatch(requestAnimes()),
  requestAnime: (animeId) => dispatch(requestAnime(animeId)),

})

export default connect(mSTP, mDTP)(Search);