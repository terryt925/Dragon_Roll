import { connect } from 'react-redux';
import Banner from './banner';

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id]
  };
};

const mapDispatchToProps = dispatch => ({
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Banner);