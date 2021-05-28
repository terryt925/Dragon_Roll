import React from 'react';
import { Link } from 'react-router-dom';



const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <div className='center-header'>
      <Link to="/" style={{ textDecoration: 'none' }}>
        <h1 className="header-title">Dragon Roll</h1>
      </Link>
    </div>
  );
  const personalGreeting = () => (

    <div className='seperate-header'>

      <Link to="/" style={{ textDecoration: 'none' }}>
        <h1 className="header-title">Dragon Roll</h1>
      </Link>

      <hgroup className='seperate-buttons'>
        <Link to="/" >
          <input id="anime" className="navi-button" readOnly value="Anime"/>
        </Link>
        <Link to="/bookmarks" >
          <input id="bookmark" className="navi-button" readOnly value="Queue"/>
        </Link>
        <input className="button" onClick={logout} readOnly value="Log Out"/>
      </hgroup>

    </div>

  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
