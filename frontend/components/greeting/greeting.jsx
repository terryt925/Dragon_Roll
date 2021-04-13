import React from 'react';
import { Link } from 'react-router-dom';



const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <nav>
     </nav>
  );
  const personalGreeting = () => (
    <hgroup>
      <input id="nav" className="button" onClick={logout} readOnly value="Log Out"/>
      <Link to="/" style={{ textDecoration: 'none' }}>
        <input id="anime" className="button" readOnly value="Anime"/>
      </Link>
    </hgroup>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
