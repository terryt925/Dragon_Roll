import {connect} from 'react-redux';
import { requestAnimes } from '../../actions/anime_actions';
import Search from './search';

const mSTP = (state) => ({
  animes: Object.values(state.entities.animes)
})

const mDTP = (dispatch) => ({
  requestAnimes: () => dispatch(requestAnimes()),

})

export default connect(mSTP, mDTP)(Search);