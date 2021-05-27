import React from 'react';
import {Link} from 'react-router-dom';

class BookmarkItem extends React.Component {


  render() {

    return(
      <Link to={`/animes/${this.props.anime.id}`} style={{ textDecoration: 'none' }}>
        <ul>
          <img src={this.props.anime.photo_url} />
          <li>{this.props.anime.title}</li>
          <li>{this.props.anime.synopsis}</li>
        </ul>
      </Link>
    )
  }

}

export default BookmarkItem;