import React from 'react';


class EpisodeIndexItem extends React.Component {



  render() {

    return (

      <ul className="thumbnail">
        <iframe width="420" height="315"
          src={this.props.episode.video_link}>
        </iframe>
        <li className="image-text">{this.props.episode.title}</li>
      </ul>

    )
  }
}

export default EpisodeIndexItem;