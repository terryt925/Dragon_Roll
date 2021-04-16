import { connect } from 'react-redux';
import EpisodeShow from './episode_show';
import { requestEpisode } from '../../actions/episode_actions';


const mSTP = (state, ownProps) => ({
  episode: state.entities.episodes[ownProps.match.params.id]
})


const mDTP = (dipatch) => ({
  requestEpisode: (episodeId) => dipatch(requestEpisode(episodeId))
})

export default connect(mSTP, mDTP)(EpisodeShow);