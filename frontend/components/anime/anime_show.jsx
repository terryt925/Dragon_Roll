import React from 'react';
import EpisodeIndexItem from './anime_show_item';


class EpisodeIndex extends React.Component {

  constructor(props) {
    super(props);
    this.createClick = this.createClick.bind(this);
    this.deleteClick = this.deleteClick.bind(this);
  }


  componentDidMount() {
    // this.props.requestBookmarks();
    this.props.requestAnime(this.props.match.params.id);
    // this.props.requestAnime(this.props.anime.id);
    window.scrollTo(0, 0);

  }

  createClick() {
    this.props.createBookmark(this.props.bookmark)
      // .then(this.props.requestAnime(this.props.match.params.id))
  }

  deleteClick() {
    this.props.deleteBookmark(this.props.bookmark.anime_id)
      // .then(this.props.requestAnime(this.props.match.params.id))
  }

  render() {
    // debugger
    console.log(this.props)
    let bookmark = <button onClick={this.createClick} className='not-bookmarked'>
                    Bookmark
                  </button>;
    this.props.userBookmarks.map((anime) => {
      if (anime.id === this.props.bookmark.anime_id) {
        return bookmark = <button onClick={this.deleteClick} className='bookmarked'>
                    Bookmarked
                  </button>;
      } 
      // else {
        // bookmark = <button onClick={this.handleClick} className='not-bookmarked'>
        //             Bookmark
        //           </button>;
      // }
    })
    if (!this.props.episodes) return null;
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
            <p className="anime-title">{this.props.anime.title}
              {bookmark}
            </p>
            <p className="anime-show-line"></p>
            <p className="anime-show-text">{this.props.anime.synopsis}</p>
          </div>
        </div>
      </div>
    )
  }
}
export default EpisodeIndex;