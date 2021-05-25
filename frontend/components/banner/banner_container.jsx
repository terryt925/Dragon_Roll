import { connect } from 'react-redux';
import Banner from './banner';
import { requestAnime } from '../../actions/anime_actions'


const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id]
  };
};

const mapDispatchToProps = dispatch => ({
  requestAnime: (animeId) => dispatch(requestAnime(animeId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Banner);