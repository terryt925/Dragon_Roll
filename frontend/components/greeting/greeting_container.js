import { connect } from 'react-redux';

import { logout } from '../../actions/session_actions';
import Greeting from './greeting';

// const mapStateToProps = ({ session, entities: { users } }) => {
const mapStateToProps = (state) => {
  return {
    // currentUser: users[session.id]
    currentUser: state.entities.users
  };
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
