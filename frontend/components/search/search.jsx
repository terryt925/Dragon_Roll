import React from 'react';
import {withRouter} from 'react-router-dom';

class Search extends React.Component {

  constructor(props) {
    super(props);
    this.handleKeyDown = this.handleKeyDown.bind(this);
    this.update = this.update.bind(this);
    this.state = {
      inputValue: ''
    };
  }

  componentDidMount() {
    this.props.requestAnimes();
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleKeyDown(e) {
    e.preventDefault();
    // console.log(e)
    let animeNames;
    let result = false;
    animeNames = this.props.animes.slice(0, 16).map(anime => anime.title.toLowerCase());

    if (e.key === 'Enter') {
      animeNames.map((name, idx) => {
        if (name === this.state.inputValue.toLowerCase()) {
          this.props.history.push(`/animes/${idx+1}`)
          this.props.requestAnime(`${idx+1}`)
          result = true
          return this.setState({inputValue: ''})
        }
      });
      if (result === false) this.props.history.push('/nomatch')
    }

  }

  render() {
    // console.log(this.props)
    return (
      <div className='search-bar-div'>
          <input
            placeholder='Anime'
            type="text"
            value={this.state.inputValue}
            onChange={this.update('inputValue')}
            onKeyUp={this.handleKeyDown}
          />
          {/* <div>
            <svg viewBox="0 0 48 48">
              <path d="M37.3,23.2c0.1-0.5,0.1-1.1,0.1-1.6c0-0.5,0-1.1-0.1-1.6c-0.8-7.5-6.9-13.4-14.5-13.9c-0.3,0-0.7-0.1-1-0.1c-0.3,0-0.5,0-0.8,0C12.8,6.5,6.2,13.3,6.2,21.6c0,8.6,7,15.6,15.6,15.6c3.9,0,7.5-1.5,10.2-3.9c0.5-0.4,1-0.9,1.4-1.4C35.6,29.4,37,26.5,37.3,23.2z M21.8,34.6c-7.2,0-13.1-5.9-13.1-13.1S14.6,8.5,21.8,8.5s13.1,5.9,13.1,13.1S29,34.6,21.8,34.6z"></path>
              <path d="M42.1,37.4L37.7,33c-0.1-0.1-0.3-0.2-0.4-0.2s-0.3,0.1-0.4,0.2l-0.9,0.9l-1.4-1.4c-0.5,0.6-1.1,1.2-1.8,1.8l1.4,1.4l-0.9,0.9c-0.1,0.1-0.2,0.3-0.2,0.4c0,0.2,0.1,0.3,0.2,0.4l4.4,4.4c0.2,0.2,0.6,0.2,0.9,0l3.5-3.5C42.3,38.1,42.3,37.7,42.1,37.4z"></path>
            </svg>
          </div> */}
      </div>
    )

  }


}

export default withRouter(Search);