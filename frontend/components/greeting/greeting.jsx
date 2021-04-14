import React from 'react';
import { NavLink } from 'react-router-dom';



const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <nav>
     </nav>
  );
  const personalGreeting = () => (
    <hgroup>
      <NavLink activeClassName="selected"  exact to="/" >
        <input id="anime" className="navi-button" readOnly value="Anime"/>
      </NavLink>
      <input id="nav" className="button" onClick={logout} readOnly value="Log Out"/>
    </hgroup>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
