# README

* Ruby version - 2.5.1
* Node version - 10.13.0
* NPM - 6.14.4

* System dependencies:

+  "@babel/core": "^7.13.14",
+  "@babel/preset-env": "^7.13.12",
+  "@babel/preset-react": "^7.13.13",
+  "babel-loader": "^8.2.2",
+  "react": "^17.0.2",
+  "react-dom": "^17.0.2",
+  "react-redux": "^7.2.3",
+  "react-router-dom": "^5.2.0",
+  "redux": "^4.0.5",
+  "redux-logger": "^3.0.6",
+  "redux-thunk": "^2.3.0",
+  "webpack": "^5.30.0",
+  "webpack-cli": "^4.6.0"

* Required gems:

+  gem 'jbuilder', '~> 2.5'
+  gem "aws-sdk-s3"
+  gem "open-uri"

* Live Demo : https://dragonroll-anime.herokuapp.com/

## Summary:

  Welcome to the Dragon Roll Repo. This project was designed to be a clone of 
the popular anime streaming site, "crunchyroll.com". When you first arrive on 
the site you are greeted with a login/signup component via the user authentication.
The site will remember whether you were signed in last time or if you had logged 
prior to leaving. 

  When you get to the splash page, you will see an index of anime. Above that index 
is a banner. When you click on a anime or banner, you will be taken to that animes 
respective show page. 

  On the anime show page you will see a list of the episodes for said anime and its 
description on the right. On the top right of the screen there is a "anime" button 
that will take you back to the splash page. 

  When you click on one of the thumbnailed episodes, you will be directed to a 
episode show page. The episode will be enlarged and able to be viewed on the site.

  Throughout this project I have used React-Redux for the frontend. Jbuilder was 
used for its ajax requests to the backend. The backend is done with Ruby on Rails. 
Amazons AWS S3 was used to store the thumnail photos to active storage. 


## Features: 
  
  ### video_links: 
    
    When first creating this application, I was met with a problem on accessing 
  the anime episodes. The anime episodes were not free and would require payment 
  and other documents. To get around this I used embeded youtube videos. Each 
  episode was seeded with a link to its respected video. This save me time, money, 
  and memory for the videos. 

```ruby

  one_piece_2 = Episode.create(
  title: "Episode 2",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/9iNOXZA05PA"
  )

```
