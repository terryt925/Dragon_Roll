import React from 'react';
import AnimeIndexItem from './anime_index_item';

// import { Link } from 'react-router-dom';


class AnimeIndex extends React.Component {
  componentDidMount() {
    this.props.requestAnimes()
  }

  render() {

    return (
      <div className="anime-div">
        <img className="header-image" src={"/header.jpg"} alt=""/>
        <div className="thumbnails" >
          {
            this.props.animes.map((anime, id) => (
              <AnimeIndexItem key={id} anime={anime}  />
            ))
          }
        </div>
      </div>
    )
  }
}
export default AnimeIndex;