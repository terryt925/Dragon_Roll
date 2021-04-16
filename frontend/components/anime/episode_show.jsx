import React from 'react';


class EpisodeShow extends React.Component {

  componentDidMount() {
    this.props.requestEpisode(this.props.match.params.id)
    // window.scrollTo(3, 3);
  }


  render() {
    console.log(this.props)
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