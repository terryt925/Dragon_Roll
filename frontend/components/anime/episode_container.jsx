import { connect } from 'react-redux';
import EpisodeShow from './episode_show';
import { requestEpisode } from '../../actions/episode_actions';


const mSTP = (state, ownProps) => ({
  episode: state.entities.episodes[ownProps.match.params.id]
})


const mDTP = (dispatch) => ({
  requestEpisode: (episodeId) => dispatch(requestEpisode(episodeId))
})

export default connect(mSTP, mDTP)(EpisodeShow);