# TO startit on the staging server of nexchange do:
```
# docker run --name nexchange_web -v /data/letsencrypt:/etc/letsencrypt -v /data/mediafiles:/usr/share/nginx/html/media -v /data/staticfiles:/usr/share/nginx/html/static --link nexchange_app:GUNICORN_HOST -e GUNICORN_PORT=8000 -p 80:80 -p 443:443 -d pitervergara/nginx:nexchange-staging

```
