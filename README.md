## PROJECT #1 PWNLISTS
---
[Link to live site](https://pwnlist.herokuapp.com/)

Pwnlists - a game collection web application where users can sign up for an account and create their own video game lists. Pwnlists encourages users to be creative with their lists and really tests gamers on how much they know about the games they know and love. There's plenty of game collection list creators out there but I wanted to create one based on the Steam Awards poll that's held every year.
---
## How to use
* Sign up or log in via the homepage.
* Create your gamer profile
* Add games to the database including an image
* Create lists of your favourites games
* View and edit all games currently in the database
* View and edit all lists created by users
---
## Objectives
* The app should have at least 3 models. Currently Users, Games and Lists.
* Use partials to DRY (Don’t Repeat Yourself) up your views.
* Handles invalid data. Forms in your application should validate data and handle incorrect inputs. Validate sign up information, verify valid email addresses and secure passwords.
* Use Gems Use a GEM that talks to an API to add functionality to your app.
* User Login Make sure you have basic authentication and authorization set up (if you need it).
* Deploy your code to Heroku.
---
## Challenge Add-ons
These were not covered in class but were added to my project.

* Front-end Framework - I've chosen to use Bootstrap.
* File upload. I've added Cloudinary for image uploads.
* I'm using the search functionality of ruby gem Geocoder that takes an address from user input and searches for its latitude and longitude coordinates. This connects to the Google Maps API and will display when a user updates their user profile or signs up to Pwnlists.  
---
## Scope
* Sign up
* Sign in via email address
* Set up gamer profile with avatar using Cloudinary and Google Maps API & Geocoder GEM for user's location
* Admin functionality to delete lists, users or games
* Ron Swanson quote generator
* Basic styling and CRUD working
---
## Object Models
* USER has_many lists and has_many games
* GAME has_and_belongs_to_many lists
* LIST belongs_to USER and has_and_belongs_to_many GAMES
---
## Completed Project deliverables:

* Link to Heroku hosted project
* Link to source code on GitHub
---
## To Do:
- [ ] Finish off favourites model and functionality (users can favourite a list)
- [ ] Nokogiri for a neverending scrolling image gallery on root_path/landing page
- [ ] Advanced styling without Bootstrap
- [ ] API for games search so users don't have to add games manually
