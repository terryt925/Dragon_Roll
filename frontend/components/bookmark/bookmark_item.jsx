import React from 'react';
import {Link} from 'react-router-dom';

class BookmarkItem extends React.Component {

  constructor(props) {
    super(props);
    this.deleteClick = this.deleteClick.bind(this);
  }

  deleteClick(e) {
    // debugger
    e.preventDefault();
    console.log(this.props)
    this.props.deleteBookmark(this.props.anime.id);
  }

  render() {

    console.log(this.props)

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
          <div className='bookmark-trash-can' onClick={this.deleteClick}>
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="trash" className="svg-inline--fa fa-trash fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M432 32H312l-9.4-18.7A24 24 0 0 0 281.1 0H166.8a23.72 23.72 0 0 0-21.4 13.3L136 32H16A16 16 0 0 0 0 48v32a16 16 0 0 0 16 16h416a16 16 0 0 0 16-16V48a16 16 0 0 0-16-16zM53.2 467a48 48 0 0 0 47.9 45h245.8a48 48 0 0 0 47.9-45L416 128H32z"></path></svg>
          </div>
        </ul>
      </Link>
    )
  }

}

export default BookmarkItem;