# Moodle 2.7 on Docker

__Warning!__ This repo is meant for development usage. Be sure to change the MySQL credentials if you go into production with this Docker image.

## Installing

1. Install Docker
2. Clone this repo
3. `docker build -t moodle path/to/repo`
4. `docker run -p 3456:80 -d name=moodle1 moodle`

## Configuring

1. Go to [http://localhost:3456/moodle](http://localhost:3456/moodle). Proceed through every screen unless otherwise noted below.
2. On the "Confirm Paths" screen, change "Data Directory" to `/var/moodledata`
3. On the "Database settings" screen, use the following values: Database name = `exampleDB`; Database user = `example_user`; Database password = `Admin2015`
