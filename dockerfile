#FROM busybox:1.36
FROM bash:5.2.15
#ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.11.0/wait /wait
#RUN chmod +x /wait

#ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /wait-for-it.sh
#RUN chmod +x /wait-for-it.sh

ADD https://raw.githubusercontent.com/eficode/wait-for/master/wait-for /wait-for
RUN chmod +x /wait-for

WORKDIR /app