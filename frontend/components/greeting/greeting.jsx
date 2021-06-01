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
        <Link to="/" style={{ textDecoration: 'none' }}>
          <input id="anime" className="navi-button" readOnly value="Anime"/>
        </Link>
        <Link to="/bookmarks" style={{ textDecoration: 'none' }}>
          <div className='queue-button'>
            <img id='bookmark' src={"/bookmarkOne.png"} width='45' height='50'
              alt="bookmarked by amy morgan from the Noun Project" 
            />
            <p className='button-title'>Queue</p>
          </div>
          {/* <input id="bookmark" className="navi-button" readOnly value="Queue"/> */}
          {/* bookmarked by amy morgan from the Noun Project */}
        </Link>
        <input className="button" onClick={logout} readOnly value="Log Out"/>
      </hgroup>

    </div>

  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
