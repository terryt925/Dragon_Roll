import { connect } from 'react-redux';
import { requestAnimes } from '../../actions/anime_actions'
import AnimeIndex from './anime_index';

const mSTP = (state) => ({
  animes: Object.values(state.entities.animes)
})

const mDTP = (dipatch) => ({
  requestAnimes: () => dipatch(requestAnimes())
})

export default connect(mSTP, mDTP)(AnimeIndex);