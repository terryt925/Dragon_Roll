import React from 'react';
import { Link } from 'react-router-dom';
import Search from '../search/search_container';

class Greeting extends React.Component {

  constructor(props) {
    super(props);
  }

  render() {

    // const Greeting = ({ currentUser, logout }) => {
      const sessionLinks = () => (
        <div className='center-header'>
          <Link to="/" style={{ textDecoration: 'none' }}>
            <h1 className="header-title">Dragon Roll</h1>
          </Link>
        </div>
      );
      
      const personalGreeting = () => (
    
        <div className='seperate-header'>
    
          <Link to="/" style={{ textDecoration: 'none' }} >
            <h1 className="header-title">Dragon Roll</h1>
          </Link>
    
          <ul className='fab-icons-ul'>
            <li>
              <a href='https://github.com/terryt925/Dragon_Roll' target='_blank' rel="noreferrer" className="fab-icons" >
                <i className="fab fa-github"></i>
              </a>
            </li>
            <li>
              <a href='https://www.linkedin.com/in/terry-thind-42a8591a1' target='_blank' rel="noreferrer" className="fab-icons">
                <i className="fab fa-linkedin"></i>
              </a>
            </li>
            <li>
              <a href='https://angel.co/u/terry-thind' target='_blank' rel="noreferrer" className="fab-icons">
                <i className="fab fa-angellist"></i>
              </a>
            </li>
          </ul>
    
          <hgroup className='seperate-buttons'>
            <Link to="/" style={{ textDecoration: 'none' }} >
              <div className='queue-button'>
                <svg viewBox='0 0 512 512' >
                  <path d="M268.278 137.4l-10.384-9.963-10.035 10.332c5.55-5.714 14.653-5.878 20.419-0.369z" />
                  <path d="M258.233 143.381c1.505 0 2.98 0 4.464 0 5.806 0.583 11.090 2.304 15.442 4.741l93.245-95.897c5.56-5.745 5.438-14.889-0.297-20.5-5.745-5.54-14.919-5.438-20.5 0.317l-92.682 95.396 10.384 9.964c-5.765-5.509-14.879-5.345-20.429 0.369l10.035-10.332-102.799-98.745c-5.765-5.54-14.93-5.366-20.48 0.41-5.519 5.776-5.335 14.95 0.42 20.5l103.107 99.001c4.178-2.703 9.472-4.618 15.626-5.222 1.475 0 2.98 0 4.465 0z" />
                  <path d="M396.738 167.198h-107.243c0-1.495 0-2.98 0-2.98 0-6.38-4.485-12.196-11.356-16.097l-9.502 9.81c-5.581 5.724-14.704 5.878-20.429 0.348l-10.066-9.677c-6.011 3.881-9.687 9.493-9.687 15.616 0 0 0 1.495 0 2.98h-113.162c-32.788 0-59.577 26.809-59.577 59.556v189.154c0 34.243 26.788 61.061 59.577 61.061h7.424v10.384h269.527v-10.384h4.495c32.758 0 59.536-26.819 59.536-61.061v-189.143c0.010-32.758-26.777-59.566-59.536-59.566zM370.76 476.109c-7.803 0-14.121-6.339-14.121-14.162s6.318-14.121 14.121-14.121c7.824 0 14.142 6.298 14.142 14.121s-6.318 14.162-14.142 14.162zM407.163 393.575c0 25.303-20.839 44.677-44.677 44.677h-212.941c-25.314 0-44.688-19.385-44.688-44.677v-142.971c0-25.314 19.385-46.172 44.688-46.172h212.931c23.839 0 44.677 20.859 44.677 46.172v142.971z" />
                  <path d="M268.636 157.931l9.502-9.81c-4.362-2.447-9.636-4.167-15.442-4.741-1.485 0-2.949 0-4.464 0-1.495 0-2.99 0-4.464 0-6.165 0.614-11.448 2.519-15.626 5.222l10.066 9.677c5.724 5.53 14.848 5.376 20.429-0.348z" />
                </svg>
                <p className='button-title' id='anime-button-title'>Anime</p>
              </div>
            </Link>
    
            <Link to="/bookmarks" style={{ textDecoration: 'none' }}>
              <div className='queue-button'>
                <svg viewBox='0 0 48 48'>
                  <path d="M33.3,8H14.7C13.2,8,12,9.5,12,11v28.6c0,0.5,0.3,1,0.7,1.2
                  c0.2,0.1,0.4,0.1,0.6,0.1c0.3,0,0.5-0.1,0.8-0.2l9.9-7.1l9.9,7.1c0.2,
                  0.2,0.5,0.2,0.8,0.2c0.2,0,0.4,0,0.6-0.1c0.4-0.2,0.7-0.7,0.7-1.2V11C
                  36,9.5,34.8,8,33.3,8z"></path>
                </svg>
                <p className='button-title'>Queue</p>
              </div>
            </Link>
    
              <div className='queue-button' onClick={this.props.logout}>
                <svg viewBox='0 0 48 48' id='logout-image'>
                  <circle cx="16" cy="16" r="8"></circle>
                  <path d="M16,28c-5.3,0-16,2.7-16,8v4h32v-4C32,30.7,21.3,28,16,28z"></path>
                </svg>
                <p className="button-title" >Logout</p>
              </div>
    
            <div>
              < Search />
            </div>
    
          </hgroup>
    
        </div>
    
      );
    
      // return currentUser ? personalGreeting() : sessionLinks();
      return this.props.currentUser > 0 ? personalGreeting() : sessionLinks();
      // return Object.keys(this.props.currentUser).length === 0 ? sessionLinks() : personalGreeting();
    
  // }
  };
}





export default Greeting;
