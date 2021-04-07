import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import GreetingContainer from './greeting/greeting_container';
import HomeContainer from './home/home_container';
import { Route, Link } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/route_util';

export default () => (
  <div>
    <header>
      <Link to="/"><h1>Dragon Roll</h1></Link>
      <GreetingContainer />
    </header>
      <AuthRoute exact path="/signup" component={SignupContainer} />
      <AuthRoute exact path="/login" component={LoginContainer} />
      <Route exact path="/" component={HomeContainer}/>
      {/* <Route exact path="/" component={NavBarContainer} /> */}
  </div>
);