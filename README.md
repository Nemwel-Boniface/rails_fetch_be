# Rails Fetch API

This repository is a Ruby on Rails-developed backend API-only application named **"Rails Fetch API"**. The purpose of the project is to serve as an API for my frontend React/ Redux project. The API features complete user authentication using [devise](https://github.com/heartcombo/devise) and [Devise JWT](https://github.com/waiting-for-dev/devise-jwt) gems that handle authentication. You can sign up to the application, sign in to the API, log out from the API, and fetch cat facts from this URL ```https://cat-fact.herokuapp.com/facts/```. The project also has a Front end repository which can be viewed [here (Cat Facts)](https://github.com/Nemwel-Boniface/cat_facts)

**If you would like to have a better view of each individual feature implemented, please visit the [Pull Requests page](https://github.com/Nemwel-Boniface/rails_fetch_be/pulls) and have a look at the closed PRs where you will be able to see what was changed at what specific point in time.**


Enjoy!


## Built With
- Ruby on rails v7.1.3.2
- Ruby v3 +
- PostgreSQL
- Rswag Gem for API documentation (To be implemented)
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

5. Start your rails server and run it on port 3000 ```rails s```. If port 3000 is occupied, you can load it with port 3001 with the following ```rails s -p 3001```. **This however means you need to update the port number in the front end URL**

6. To check the API endpoints locally visit ```http://localhost:3000/api-docs```. The API URL page will be updated.


## Testing the project online

The project base URL is ```https://rails-fetch-be.onrender.com```. The API allows you to perform a number of operations namely, Signing up, signing in, Fetching the cat facts, logout. Below I will elaborate on these with their endpoints and where applicable provide sample data.

### 1. Sign up
 Endpoints for signing up is ```POST /signup``` sample data for signing up: **If it throws an error it means the user with this email already exists so maybe create with another email.**
 ```
{
   "user": {
    "username": "Nemwel Boniface",
     "password": 12345678,
     "password_confirmation": 12345678,
     "email": "nemwel@gmail.com",
     "photo": "https://images.unsplash.com/photo-1631131431211-4f768d89087d?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
   }
}
```

### 2. Sign in
 Endpoint for signing in is ``` POST /login```. Sample login (with a valid user)
 ```
{
   "user": {
     "password": 12345678,
     "email": "nemwel@gmail.com"
   }
}
```

### 3. Fetch all cat facts (You need to be authenticated first)
 Endpoint for fetching all the cat facts is ```GET /cat_facts```. Respond with JSON data


### 4. Log out from the application
 Endpoint for logging out is ```DELETE /logout```. Respond with JSON data


**Please remember to pass the Bearer token in the header after you have logged in when testing from Postman. This will allow you to access the ```/cat_facts``` resources.**
 

# Additional Tools
  1. Rubocop
  2. Ruby Gems

### To run rubocop we use:

1. `rubocop`

### To autocorrect offenses with rubocop we use:
1. `rubocop --auto-correct-all` or
2. `rubocop -A`


Have fun with Crushing any Rubocop offences you get!

## Authors

👤 **Nemwel Boniface**

- GitHub: [@Nemwel Boniface](https://github.com/Nemwel-Boniface)
- Twitter: [@Nemwel Boniface](https://twitter.com/nemwel_bonie)
- LinkedIn: [@Nemwel Bonifacej](https://www.linkedin.com/in/nemwel-nyandoro/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Nemwel-Boniface/rails_fetch_be/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- To God be the Glory :pray: 
- Me for believing that I can! :sunglasses: 

## 📝 License

This project is [MIT](./MIT.md) licensed.