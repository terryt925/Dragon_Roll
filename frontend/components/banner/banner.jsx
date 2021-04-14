import React from 'react';
import { Link } from 'react-router-dom';

const Banner = ({ currentUser}) => {
  const noBanner = () => (
    <div></div>
  );
  const personalBanner = () => (
    <div className="anime-div">
      <Link to="/" style={{ textDecoration: 'none' }}>
        <img className="header-image" src={"/header.jpg"} alt="Your Name" />
        {/* <p className="header-text" style={{ textDecoration: 'none' }}>WATCH NOW</p> */}
      </Link>
    </div>
  );

  return currentUser ? personalBanner() : noBanner();
};


export default Banner;