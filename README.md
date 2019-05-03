# django-nearbyshops
This is a simple GIS Django app based off of this [RealPython tutorial](https://realpython.com/location-based-app-with-geodjango-tutorial/) dockerized with some slight modifications.

The app serves a basic API to list shops closest to a user's location.

## Running the app
If you have docker with docker-compose, simply execute `docker-compose up` from the project root. After build and initialization, you may access the app in your browser at `localhost:8000` and you may create a superuser for the Django admin interface with `docker exec -it <CONTAINER_ID> python manage.py createsuperuser`

Alternatively, with a local installation of Python3 and Postgres 9.6 with the PostGIS extension, you may install GeoDjango dependencies with the command `sudo apt-get --assume-yes install binutils libproj-dev gdal-bin proj-bin`

After all dependencies are installed you may initialize and run the app by executing the following commands from the project root:
```
pip install -r requirements.txt
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
```
To create a Django superuser run `python manage.py createsuperuser`

When the server is running you may access it in your browser at `localhost:8000` and the Django admin interface at `localhost:8000/admin`

List of all dependencies:
- Python3
- Postgres9.6 PostGIS extension
- GEOS 
- GDAL
- PROJ.4
- Django
- psycopg2