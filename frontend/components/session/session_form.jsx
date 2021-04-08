import React from 'react';
import { Link } from 'react-router-dom'

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: '',
      errors: []
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.formTitle = this.formTitle.bind(this);
    this.demoLogin = this.demoLogin.bind(this);
    this.button = this.button.bind(this);
  }

  formTitle() {
    if (this.props.formType === 'Login')
      return <h3 id="welcome-back">Log In</h3>
    else
      return <h3 id="welcome-back">Sign Up</h3>;
  }

  button() {
      if (this.props.formType === "Login") {
        const val = 'Log In';
        return (
          <input className="button" type="submit" value={val} />
        )
      } else {
        const val = 'Create Account';
        return (
          <input className="button" type="submit" value={val} />
        )
      }
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(
      () => this.props.history.push("/")
    ).fail(() => this.setState({ errors: this.props.errors }))
  }

  renderDemo() {
    if (this.props.formType === "Login") {
      return (
        <input className="button" type="submit" onClick={this.demoLogin} value="Demo Login" />
      )
    }
  }

  demoLogin(e) {
    e.preventDefault()
    const demo = { username: "demo", password: "password" }
    const speed = 100;

    if (this.state.username !== demo.username) {
      const inputUsername = setInterval(() => {
        if (this.state.username !== demo.username) {
          const temp = demo.username.slice(0, this.state.username.length + 1);
          this.setState({ username: temp })
        } else {
          clearInterval(inputUsername);
          animatePW();
        }
      }, speed)
    }
    const animatePW = () => {
      if (this.state.password !== demo.password) {
        const inputPassword = setInterval(() => {
          if (this.state.password !== demo.password) {
            const temp = demo.password.slice(0, this.state.password.length + 1);
            this.setState({ password: temp });
          } else {
            clearInterval(inputPassword);
            this.props.demoLogin(demo)
          }
        }, speed);
      }
    }
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li className="auth-error" key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  

  render() {

    let errors = this.state.errors.map((el, idx) => {
      return <li className="auth-error" key={idx}>{el}</li>
    })

    let redirectSignup = <Link to="/signup" style={{ textDecoration: 'none' }}>
      <p id="redirect">
       Join us today!
      </p>
    </Link >;

    let redirectLogin = <Link to="/login" style={{ textDecoration: 'none' }}>
      <p id="redirect">
        Log in now!
      </p>
    </Link >

    const buttonLog = (this.props.formType === "Login") ? (
      <div>
        <div id="redirect-none"> Don't have an account? {redirectSignup}</div>
      </div>
    ) : (
        <div>
          <div id="redirect-none" >Already have an account? {redirectLogin}</div>
      </div>
    );
    return (
      <div className="container">
        <form className="form" onSubmit={this.handleSubmit}>
          {this.formTitle()}
          <br />
          <input
            id="input-field"
            placeholder='Username'
            type="text"
            value={this.state.username}
            onChange={this.update('username')}
          />
          <br />
          <input
            id="input-field2"
            placeholder='Password'
            type="password"
            value={this.state.password}
            onChange={this.update('password')}
          />
          <br />
          <div>
            {this.button()}
            {this.renderDemo()}
          </div>
          <div >
            {buttonLog}
          </div>
          <br/><br/>
        </form>
        <br/>
        <div>
          {errors}
        </div>
      </div>
    )
  }
}

export default SessionForm;