import React from 'react';
import BookmarkItem from './bookmark_item';

class Bookmark extends React.Component {
  componentDidMount() {
    this.props.requestBookmarks()
  }

  render() {

    return(
      <div>
        <p>Queued Anime</p>
        <div>
          {
            this.props.bookmarks.map((anime, id) => (
              <BookmarkItem key={id} anime={anime} />
            ))
          }
        </div>
      </div>
    )
  }
}

export default Bookmark;