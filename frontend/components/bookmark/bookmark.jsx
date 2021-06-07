import React from 'react';
import BookmarkItem from './bookmark_item';

class Bookmark extends React.Component {
  componentDidMount() {
    this.props.requestBookmarks()
  }

  render() {
    if (!this.props.bookmarks) return null;

    let bookmarkedAnime;

    bookmarkedAnime = this.props.bookmarks.sort(function(a, b) {
      return (a.id - b.id);
    });

    return(
      <div>
        <div className='anime-index-title'>
          <p className='anime-heading'>My Queue</p>
          <p className="line" ></p>
        </div>
        <div className='center-thumbnails'>
          <div className='bookmark-index'>
            {
              bookmarkedAnime.map((anime, id) => (
                <BookmarkItem key={id} anime={anime} />
              ))
            }
          </div>
        </div>
      </div>
    )
  }
}

export default Bookmark;