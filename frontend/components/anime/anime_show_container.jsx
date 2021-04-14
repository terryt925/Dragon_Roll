import { connect } from 'react-redux';
import { requestAnime } from '../../actions/anime_actions'
import EpisodeIndex from './anime_show';

const mSTP = (state) => ({
  anime: state.entities.animes,
  episodes: Object.values(state.entities.episodes)
})

const mDTP = (dipatch) => ({
  requestAnime: (animeId) => dipatch(requestAnime(animeId)),
})

export default connect(mSTP, mDTP)(EpisodeIndex);