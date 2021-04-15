import { connect } from 'react-redux';
import { requestAnime } from '../../actions/anime_actions'
import EpisodeIndex from './anime_show';
import { requestEpisode } from '../../actions/episode_actions';


const mSTP = (state) => ({
  anime: state.entities.animes,
  episodes: Object.values(state.entities.episodes)
})


const mDTP = (dipatch) => ({
  requestAnime: (animeId) => dipatch(requestAnime(animeId)),
  requestEpisode: (episodeId) => dipatch(requestEpisode(episodeId))


})

export default connect(mSTP, mDTP)(EpisodeIndex);