import { connect } from 'react-redux';
import Home from './home';

const mapStateToProps = state => ({
  currentUser: state.user
});

const mapDispatchToProps = dispatch => ({
  
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);