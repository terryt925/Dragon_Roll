import React from 'react';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return (e) => {
      this.setState({ [field]: e.target.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.login(this.state)
  }

  render() {
        return (
      <div>
        <h2>Login</h2>
        <form>
          <label>Email:
          <input
              type="text"
              value={this.state.email}
              onChange={this.update('email')}
            />
          </label>
          <label>Password:
          <input
              type="password"
              value={this.state.password}
              onChange={this.update('password')}
            />
            <button onClick={this.handleSubmit}>Login</button>
          </label>
        </form>
      </div>
    );
  }
}

export default Login;
