import { connect } from 'react-redux';
import FriendsPreview from './friends_preview';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  user: state.user.user
});

const mapDispatchToProps = dispatch => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FriendsPreview);
