import React from 'react';
import {Link} from 'react-router-dom';

class BookmarkItem extends React.Component {


  render() {
    <Link>
      <ul>
        <img src={this.props.anime.photo_url} />
        <li>{this.props.anime.title}</li>
        <li>{this.props.anime.synopsis}</li>
      </ul>
    </Link>
  }

}

export default BookmarkItem;