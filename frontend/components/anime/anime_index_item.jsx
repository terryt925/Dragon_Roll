
import React from 'react';
import { Link } from 'react-router-dom';


class AnimeIndexItem extends React.Component {

  // handleClick() {
  //   //e.preventDefault();
  //   this.props.submitEvent(this.state)
  // }

  render() {
    let amount;
    if (this.props.anime.id !== 16) {
      amount = '12 Videos';
    } else {
      amount = '4 Videos'
    }

    return (
        <Link to={`/animes/${this.props.anime.id}`} style={{ textDecoration: 'none' }}>
          <ul className="thumbnail">
            <img src={this.props.anime.photo_url} className="image"/>
            <li className="image-text">{this.props.anime.title}</li>
            <li className='anime-video-amount'>{amount}</li>
          </ul>
        </Link >
    )
  }
}

export default AnimeIndexItem;