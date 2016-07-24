Place this file inside a folder along with the nginx.conf of the site. Start the container with a volume mounted at /etc/letsencrypt containing the letsencrypt files.

`docker run -v letsencrypt:/etc/letsencrypt`