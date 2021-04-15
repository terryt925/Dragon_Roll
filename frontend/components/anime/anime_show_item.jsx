import React from 'react';


class EpisodeIndexItem extends React.Component {

  componentDidMount() {
    this.props.requestEpisode(this.props.episode.id)
  }


  render() {

    return (

      <div className="episode-item" >

          <iframe width="180" height="135" className="episode-video"
            src={this.props.episode.video_link}>
          </iframe>
          <p className="episode-item-text">{this.props.episode.title}</p>

      </div>

    )
  }
}

export default EpisodeIndexItem;