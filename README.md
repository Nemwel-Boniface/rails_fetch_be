# Rails Fetch API

This repository is a Ruby on Rails-developed backend API-only application named **"Rails Fetch API"**. The purpose of the project is to serve as an API for my frontend React/ Redux project. The API features complete user authentication using [devise](https://github.com/heartcombo/devise) and [Devise JWT](https://github.com/waiting-for-dev/devise-jwt) gems that handle authentication. You can sign up to the application, sign in to the API, log out from the API, and fetch cat facts from this URL ```https://cat-fact.herokuapp.com/facts/```. The project also has a Front end repository which can be viewed [here (Cat Facts)](https://github.com/Nemwel-Boniface/cat_facts)


Enjoy!


## Built With
- Ruby on rails v7.1.3.2
- Ruby v3 +
- PostgreSQL
- Rswag Gem for API documentation
- Postman for testing API endpoints
- Definitely lots of love :heart: and dedication :muscle:

## Link to API Documentation
To view the available endpoints visit our ``` To be updated```

## Link to FrontEnd app 
The project Front end can be found [here](https://github.com/Nemwel-Boniface/cat_facts). To see the live version of the backed API, this is the base URL ```https://rails-fetch-be.onrender.com```


## Hosting services

The project is deployed on [Render](https://render.com/) and is hosted on GitHub. To test the project, you can optionally use the hosted version base URL ```https://rails-fetch-be.onrender.com``` or clone it locally into your local machine as explained below:

## Run the project on your local machine following these steps

1. Clone the project ```git@github.com:Nemwel-Boniface/rails_fetch_be.git```

2. navigate to the project directory ```cd rails_fetch_api```

3. Install all dependencies of the project ```bundle install```

### Setup your database:

1. Create the database ```rails db:create```

2. Load all the project schema ```rails db:schema:load```

3. Migrate the project ```rails db:migrate```

4. Load project seed data ```rails db:seed```. At the moment though there are no seed data.

5. Start your rails server and run it on port 3000 ```rails s 3000```. If port 3000 is occupied, you can load it with port 3001 with the following ```rails s -p 3000```. **This however means you need to update the port number in the front end URL**

6. To check the API endpoints locally visit ```http://localhost:3000/api-docs```. The API URL page will be updated.


## Testing the project online

The project base URL is ```https://rails-fetch-be.onrender.com```. The API allows you to perform a number of operations namely, Signing up, signing in, Fetching the cat facts, logout. Below I will elaborate on these with their endpoints and where applicable provide sample data.