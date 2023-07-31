FROM klakegg/hugo:latest as build

COPY ./site /src

RUN hugo --source=/src --destination=/usr/share/nginx/html 

FROM nginx:latest

COPY nginx.conf /etc/nginx/conf.d/

COPY nginx_logrotate /etc/logrotate,d

COPY --from=build /usr/share/nginx/html /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]

