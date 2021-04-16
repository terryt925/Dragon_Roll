import React from 'react';
import EpisodeIndexItem from './anime_show_item';


class EpisodeIndex extends React.Component {


  componentDidMount() {
    this.props.requestAnime(this.props.match.params.id)
    window.scrollTo(0, 0);

  }

  render() {
    console.log("test",this.props)
    // debugger
    if (!this.props.episodes) return null;
    return (
      <div>
        <div className="episode-list-container">
          <p className="episode-list-name">Spring 2021</p>
          <p className="episode-line"></p>
        </div>
        <div className="anime-show-container">
          <div className="anime-episode-list">
            {
              this.props.episodes.map((episode, id) => (
                  <EpisodeIndexItem key={id} episode={episode} />
              ))
            }
          </div>
          <div className="anime-show-description">
            <img src={this.props.anime.photo_url} className="anime-show-image" />
            <p className="anime-title">{this.props.anime.title}</p>
            <p className="anime-show-line"></p>
            <p className="anime-show-text">{this.props.anime.synopsis}</p>
          </div>
        </div>
      </div>
    )
  }
}
export default EpisodeIndex;