import React from 'react';


class EpisodeShow extends React.Component {

  componentDidMount() {
    this.props.requestEpisode(this.props.match.params.id)
  }


  render() {
    if (this.props.episode === undefined) return null;
    return (
      <div className="episode-show-item-container">
        <h1 className="episode-show-item-title">{this.props.episode.title}</h1>
        <iframe width="900px" height="675px" 
          src={this.props.episode.video_link}>
        </iframe>
      </div>
    )
  }
}

export default EpisodeShow;