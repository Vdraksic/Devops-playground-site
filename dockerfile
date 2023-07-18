FROM klakegg/hugo:latest as build

COPY /site /src

RUN hugo --source=/src --destination=/usr/share/nginx/html 

FROM nginx:latest

COPY --from=build /usr/share/nginx/html /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]
