FROM ubuntu

COPY dart-sass-zip/ /sass/
#RUN apk add libc6-compat
RUN mkdir /dst
RUN mkdir /src
WORKDIR /src
CMD [ "/sass/sass","main.scss", "/dst/main.min.css","--no-source-map","--style=compressed","--charset" ]