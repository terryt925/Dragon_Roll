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
  }

  formTitle() {
    if (this.props.formType === 'Login')
      return <h3 >Welcome back!</h3>
    else
      return <h3 >Sign up for free!</h3>;
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
        <input type="submit" onClick={this.demoLogin} value="Demo Login" />
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
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  

  render() {

    let errors = this.state.errors.map((el, idx) => {
      return <li key={idx}>{el}</li>
    })

    const buttonLog = (this.props.formType === "Login") ? (
      <div >
        <Link to="/signup" >
          Don't have an account? Sign up today!
        </Link >
      </div>
    ) : (
      <div >
        <Link to="/login" >
          Already have an account? Log in now!
        </Link >
      </div>
    );
    return (
      <div >
        <form className="form" onSubmit={this.handleSubmit}>
          {this.formTitle()}
          <br />
          <input

            placeholder='Username'
            type="text"
            value={this.state.username}
            onChange={this.update('username')}
          />
          <br />
          <input

            placeholder='Password'
            type="password"
            value={this.state.password}
            onChange={this.update('password')}
          />
          <div>
            {errors}
          </div>
          <br />
          <div >
            <input type="submit" value={this.props.formType}/>
            {this.renderDemo()}
          </div>
          <div >
            {buttonLog}
          </div>
        </form>
      </div>
    )
  }
}

export default SessionForm;