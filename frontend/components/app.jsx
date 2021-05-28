import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import GreetingContainer from './greeting/greeting_container';
// import HomeContainer from './home/home_container';
import { Route, Switch } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/route_util';
import AnimeIndexContainer from './anime/anime_index_container';
import Banner from './banner/banner_container'
import AnimeShowContainer from './anime/anime_show_container';
import EpisodeShowContainer from './anime/episode_container';
import BookmarkContainer from './bookmark/bookmark_container';

const NoMatchPage = () => {
  return (
    <h3 className="error-page">404 - Not found</h3>
  );
};

export default () => (
  <div>
    <header>
      {/* <div className='seperate-header'> */}
        {/* <Link to="/" style={{ textDecoration: 'none' }}>
          <h1 className="header-title">Dragon Roll</h1>
        </Link> */}
        <GreetingContainer />
      {/* </div> */}
    </header>
    <Banner />
    <Switch>
        <AuthRoute exact path="/signup" component={SignupContainer} />
        <AuthRoute exact path="/login" component={LoginContainer} />
        <ProtectedRoute exact path="/" component={AnimeIndexContainer}/>
        <ProtectedRoute exact path="/animes/:id" component={AnimeShowContainer} />
        <ProtectedRoute exact path="/episodes/:id" component={EpisodeShowContainer} />
        <ProtectedRoute exact path="/bookmarks" component={BookmarkContainer} />
        <Route component={NoMatchPage} />
    </Switch>
  </div>
);