import React from 'react';
import AnimeIndexItem from './anime_index_item';


class AnimeIndex extends React.Component {
  componentDidMount() {
    this.props.requestAnimes();
    this.props.requestBookmarks();
  }

  render() {
    
    return (
      <div >
        <div className='anime-index-title'>
          <p className="anime-heading" >Anime</p>
          <p className="line" ></p>
        </div>
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