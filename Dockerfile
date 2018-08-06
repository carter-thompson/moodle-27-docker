FROM linode/lamp
USER root

RUN apt-get update
RUN apt-get install -y git php5-mysql php5-curl php5-intl php5-xmlrpc php5-json php5-gd

RUN mkdir -p /var/moodledata/
RUN chmod 777 /var/moodledata/
RUN chmod 755 /var/www/example.com/
RUN git clone --depth=1 -b MOODLE_27_STABLE --single-branch git://git.moodle.org/moodle.git /var/www/example.com/public_html/moodle
RUN chown -R www-data:www-data /var/www/example.com/

COPY entry.sh /entry.sh
RUN chmod 777 /entry.sh
ENTRYPOINT ["/entry.sh"]

EXPOSE 80 443