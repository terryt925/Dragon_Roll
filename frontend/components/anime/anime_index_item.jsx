
import React from 'react';
// import { Link } from 'react-router-dom';


class AnimeIndexItem extends React.Component {


  render() {

    return (
      <ul className="thumbnail">
          <li>{this.props.anime.title}</li>
        </ul>
    )
  }
}

export default AnimeIndexItem;