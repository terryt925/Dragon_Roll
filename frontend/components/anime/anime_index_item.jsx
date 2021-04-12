
import React from 'react';
// import { Link } from 'react-router-dom';


class AnimeIndexItem extends React.Component {


  render() {

    return (
      <ul className="thumbnail">
        <img src={this.props.anime.photo_url} className="image"/>
        <li className="image-text">{this.props.anime.title}</li>
      </ul>
    )
  }
}

export default AnimeIndexItem;