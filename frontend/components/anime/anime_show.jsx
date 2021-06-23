import React from 'react';
import EpisodeIndexItem from './anime_show_item';


class EpisodeIndex extends React.Component {

  constructor(props) {
    super(props);
    this.createClick = this.createClick.bind(this);
    this.deleteClick = this.deleteClick.bind(this);
  }


  componentDidMount() {
    this.props.requestAnime(this.props.match.params.id);
    // this.props.requestAnime(this.props.anime.id);
    // window.scrollTo(0, 0);
    this.props.requestBookmarks();

  }

  createClick(e) {
    e.preventDefault();
    this.props.createBookmark(this.props.bookmark)
      // .then(this.props.requestAnime(this.props.match.params.id))
  }

  deleteClick(e) {
    e.preventDefault();
    this.props.deleteBookmark(this.props.bookmark.anime_id)
      // .then(this.props.requestAnime(this.props.match.params.id))
      // .then(this.props.requestBookmarks())
  }

  render() {
    let bookmark = <div onClick={this.createClick} className='not-bookmarked'>
                    <svg viewBox='0 0 48 48'>
                      <path d="M33.3,8H14.7C13.2,8,12,9.5,12,11v28.6c0,0.5,0.3,1,0.7,1.2
                      c0.2,0.1,0.4,0.1,0.6,0.1c0.3,0,0.5-0.1,0.8-0.2l9.9-7.1l9.9,7.1c0.2,
                      0.2,0.5,0.2,0.8,0.2c0.2,0,0.4,0,0.6-0.1c0.4-0.2,0.7-0.7,0.7-1.2V11C
                      36,9.5,34.8,8,33.3,8z"></path>
                    </svg>
                  </div>;
    this.props.userBookmarks.map((anime) => {
      if (anime.id === this.props.bookmark.anime_id) {
        return bookmark = <div onClick={this.deleteClick} className='bookmarked'>
                    <svg viewBox='0 0 48 48'>
                      <path d="M33.3,8H14.7C13.2,8,12,9.5,12,11v28.6c0,0.5,0.3,1,0.7,1.2
                      c0.2,0.1,0.4,0.1,0.6,0.1c0.3,0,0.5-0.1,0.8-0.2l9.9-7.1l9.9,7.1c0.2,
                      0.2,0.5,0.2,0.8,0.2c0.2,0,0.4,0,0.6-0.1c0.4-0.2,0.7-0.7,0.7-1.2V11C
                      36,9.5,34.8,8,33.3,8z"></path>
                    </svg>
                  </div>;
      } 
      // else {
        // bookmark = <button onClick={this.handleClick} className='not-bookmarked'>
        //             Bookmark
        //           </button>;
      // }
    })
    if (this.props.episodes.length < 1) return null;
    return (
      <div className='center-episode-list'>
        <div className="anime-show-container">
          <div className="episode-list-container">
            <p className="episode-list-name">Spring 2021</p>
            <p className="episode-line"></p>
          </div>
          <div className="anime-episode-list">
            {
              this.props.episodes.map((episode, id) => (
                  <EpisodeIndexItem key={id} episode={episode}/>
              ))
            }
          </div>
          <div className="anime-show-description">
            <img src={this.props.anime.photo_url} className="anime-show-image" />
            <div className="anime-title">{this.props.anime.title}
              {bookmark}
            </div>
            <p className="anime-show-line"></p>
            <p className="anime-show-text">{this.props.anime.synopsis}</p>
          </div>
        </div>
      </div>
    )
  }
}
export default EpisodeIndex;