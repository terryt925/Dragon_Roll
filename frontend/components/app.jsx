import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import GreetingContainer from './greeting/greeting_container';
import HomeContainer from './home/home_container';
import { Route, Link, Switch } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/route_util';

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
    <Switch>
        <AuthRoute exact path="/signup" component={SignupContainer} />
        <AuthRoute exact path="/login" component={LoginContainer} />
        <ProtectedRoute exact path="/" component={HomeContainer}/>
        <Route component={NoMatchPage} />
    </Switch>
      {/* <Route exact path="/" component={NavBarContainer} /> */}
  </div>
);