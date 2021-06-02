
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
      <div className='hover-after'>
        <Link to={`/animes/${this.props.anime.id}`} data={this.props.anime.synopsis} 
        style={{ textDecoration: 'none' }}>
          <ul className="thumbnail">
            <img src={this.props.anime.photo_url} alt={this.props.anime.synopsis} className="image"/>
            <li className="image-text">{this.props.anime.title}</li>
            <li className='anime-video-amount'>{amount}</li>
          </ul>
        </Link >
      </div>
    )
  }
}

export default AnimeIndexItem;