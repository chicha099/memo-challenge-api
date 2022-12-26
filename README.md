# 1 - Run backend locally




## Install dependencies

### `npm install`

### `composer install`




## DB setup

Creat a .env file in the root directory

You can create it manually adding the following code
See /config/database.php to see available connections and how to configure them

### `DB_CONNECTION=pgsql`    #Example of setup for PostgreSQL DB connection
### `DB_HOST=localhost`    
### `DB_PORT=5432`
### `DB_DATABASE=DB-name`
### `DB_USERNAME=username`
### `DB_PASSWORD=password`

Or copy the content on laravel's .env.example file




Once the .env is set run the following command to migrate the models to the database

### `php artisan migrate`
</br>
To empty the DB and populate it with the models again run

### `php artisan migrate:reset`
And then
 ### `php artisan migrate`
 
</br>
Now you can run the backend using 

### `php artisan serve`

Server running on [http://127.0.0.1:8000/graphql].

Use [http://127.0.0.1:8000/graphiql] to test the graphql playground.

</br>

# 1 - Run backend with Docker

Make sure Ubuntu is installed in you pc.
Make sure Docker is running and Ubuntu is added as a distro in the Docker settings.

Run

### `composer install`

Run the following command in the Ubuntu console (For example WSL for windows)

### `.vendor/bin/sail up`

This will run the backend and create an image for the backend and an image for the DB.
Check Docker to see if a new container was generated and run it if it's stopped.
Once the application's containers have been started, you may access the project in your web browser at: http://localhost.

Run

### `.vendor/bin/sail stop`

To stop the backend
