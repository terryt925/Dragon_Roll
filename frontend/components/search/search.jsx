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
    console.log(e)
    let animeNames;
    animeNames = this.props.animes.map(anime => anime.title.toLowerCase());

    if (e.key === 'Enter') {
      animeNames.map((name, idx) => {
        if (name === this.state.inputValue.toLowerCase()) {
          () => this.props.history.push(`/animes/${idx}`);
          this.setState({inputValue: ''});
        }
      });
    }
  }

  render() {
    console.log(this.props)
    return (
      <div>
          <input
            // placeholder='Username'
            type="text"
            value={this.state.inputValue}
            onChange={this.update('inputValue')}
            onKeyUp={this.handleKeyDown}
          />
      </div>
    )

  }


}

export default withRouter(Search);