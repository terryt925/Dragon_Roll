import React from 'react';

class Signup extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: ''
    }
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  update(type) {
    return (e) => {
      this.setState({ [type]: e.target.value })
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createNewUser(this.state)
  }

  render() {
    return (
      <div>
        <h1>Sign Up</h1>
        <form>
          <label>Username:
            <input type="text" value={this.state.username} onChange={this.update('username')} />
          </label>
          <label>Password:
            <input type="password" value={this.state.password} onChange={this.update('password')} />
          </label>
          <button onClick={this.handleSubmit}>Sign Up</button>
        </form>
      </div>
    )
  }
}

export default Signup;