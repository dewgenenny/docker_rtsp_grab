FROM alpine:3.7

RUN apk add --no-cache lighttpd
RUN apk add --no-cache ffmpeg
RUN apk add --no-cache bash
RUN mkdir /tmp/www

ADD grab.sh /
ADD lighttpd.conf /

EXPOSE 80

ENTRYPOINT ["/grab.sh"]

