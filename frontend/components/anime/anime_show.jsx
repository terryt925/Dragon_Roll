import React from 'react';
import { Link } from 'react-router-dom';



class EpisodeIndex extends React.Component {


  componentDidMount() {
    this.props.requestAnime(this.props.match.params.id)

  }

  render() {

    return (
      <div >
        <div>
          <img src={this.props.anime.photo_url} className="image" />
          <p className="image-text">{this.props.anime.synopsis}</p>
        </div>
        <div>
          {
            this.props.episodes.map((episode) => (
              // <Link to={`/animes/${this.props.anime.id}/episodes/${episode.id}`}
              //  style={{ textDecoration: 'none' }}>
                <EpisodeIndexItem key={episode.id} episode={episode} />
              // </Link> 
            ))
          }
        </div>
      </div>
    )
  }
}
export default EpisodeIndex;