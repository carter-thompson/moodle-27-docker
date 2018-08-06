#!/bin/bash

sudo service apache2 start
sudo service mysql start

tail -F -n0 /dev/null
