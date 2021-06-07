import React from 'react';
import {Link} from 'react-router-dom';

class BookmarkItem extends React.Component {


  render() {

   let amount;
    if (this.props.anime.id !== 16) {
      amount = '12 Videos';
    } else {
      amount = '4 Videos'
    }


    return(
      <Link to={`/animes/${this.props.anime.id}`} style={{ textDecoration: 'none' }}>
        <ul className='bookmark-thumbnail'>
          <img src={this.props.anime.photo_url} className='bookmark-image'/>
          <div>
            <li className='bookmark-image-text'>{this.props.anime.title}</li>
            <li className='bookmark-amount'>{amount}</li>
            <li className='bookmark-synopsis'>{this.props.anime.synopsis}</li>
          </div>
        </ul>
      </Link>
    )
  }

}

export default BookmarkItem;