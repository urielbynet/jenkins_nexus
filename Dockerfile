FROM nginx:alpine

RUN apk update && apk add bash

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]