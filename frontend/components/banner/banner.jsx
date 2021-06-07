import React from 'react';
import { Link } from 'react-router-dom';
class Banner extends React.Component {
  constructor(props) {
    super(props);
    // this.props.requestAnime = this.props.requestAnime.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    this.props.requestAnime('16')
  }

  render() {

    // const Banner = ({ currentUser}) => {
      const noBanner = () => (
        <div></div>
      );
      const personalBanner = () => (
        <div className="anime-div">
          <Link to="/animes/16" style={{ textDecoration: 'none' }}>
            <img className="header-image" 
              src={"/header.jpg"} 
              title="Your Name" 
              onClick={this.handleClick}
            />
            {/* <p className="header-text" style={{ textDecoration: 'none' }}>WATCH NOW</p> */}
          </Link>
        </div>
      );
    
      return this.props.currentUser ? personalBanner() : noBanner();
    // };

  }

  
}


export default Banner;