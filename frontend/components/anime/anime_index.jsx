import React from 'react';
import AnimeIndexItem from './anime_index_item';
import { Link } from 'react-router-dom';


class AnimeIndex extends React.Component {
  componentDidMount() {
    this.props.requestAnimes()
  }

  render() {
    
    return (
      <div >
        <p className="anime-heading" >Anime</p>
        <p className="line" ></p>
        <div className="thumbnails" >
          {
            this.props.animes.map((anime) => (
              <Link to={`/animes/${anime.id}`} style={{ textDecoration: 'none' }}>
                <AnimeIndexItem key={anime.id} anime={anime}  />
              </Link>
            ))
          }
        </div>
      </div>
    )
  }
}
export default AnimeIndex;