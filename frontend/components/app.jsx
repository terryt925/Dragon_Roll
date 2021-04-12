import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import GreetingContainer from './greeting/greeting_container';
// import HomeContainer from './home/home_container';
import { Route, Link, Switch } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/route_util';
import AnimeContainer from './anime/anime_index_container';
import Banner from './banner/banner_container'


const NoMatchPage = () => {
  return (
    <h3 className="error-page">404 - Not found</h3>
  );
};

export default () => (
  <div>
    <header >
      <Link to="/" style={{ textDecoration: 'none' }}>
        <h1 className="header">Dragon Roll</h1>
      </Link>
      <GreetingContainer />
    </header>
    <Banner />
    <Switch>
        <AuthRoute exact path="/signup" component={SignupContainer} />
        <AuthRoute exact path="/login" component={LoginContainer} />
        <ProtectedRoute exact path="/" component={AnimeContainer}/>
        <Route component={NoMatchPage} />
    </Switch>
  </div>
);