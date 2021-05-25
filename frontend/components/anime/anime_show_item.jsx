import React from 'react';
import { Link } from 'react-router-dom';

class EpisodeIndexItem extends React.Component {

  // componentDidMount() {
    // this.props.requestEpisode(this.props.episode.id)
  // }


  render() {
    
    return (
      <Link to={`/episodes/${this.props.episode.id}`}
      style={{ textDecoration: 'none' }}>
        <div className="episode-item" >
            <div className="video-margin"></div>
            {/* <iframe width="180" height="135"
              src={this.props.episode.video_link}>
            </iframe> */}
            <img src={"/playbutton.png"} width='180' height='135' />
            <p className="episode-item-text">{this.props.episode.title}</p>
        </div>
      </Link> 
    )
  }
}

export default EpisodeIndexItem;