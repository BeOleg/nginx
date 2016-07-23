FROM nginx:stable

ENV DEBIAN_FRONTEND noninteractive

RUN echo deb http://http.debian.net/debian jessie-backports main >> /etc/apt/sources.list
RUN apt-get update -qq && \
    apt-get install --no-install-recommends --no-install-suggests -t jessie-backports -y \
        certbot \
        netcat && \
    rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]

