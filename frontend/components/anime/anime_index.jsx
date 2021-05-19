import React from 'react';
import AnimeIndexItem from './anime_index_item';


class AnimeIndex extends React.Component {
  componentDidMount() {
    this.props.requestAnimes()
  }

  render() {
    
    return (
      <div >
        <p className="anime-heading" >Anime</p>
        <p className="line" ></p>
        <div className='center-thumbnails'>
          <div className="thumbnails" >
            {
              this.props.animes.map((anime, id) => (
                  <AnimeIndexItem key={id} anime={anime}  />
              ))
            }
          </div>
        </div>
      </div>
    )
  }
}
export default AnimeIndex;