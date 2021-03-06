FROM node:dubnium

# Create app directory
WORKDIR /srv/emNutt


COPY . .

WORKDIR /srv/emNutt/server

RUN /bin/bash -c 'cp config/config_development_template.json config/config_development.json'

RUN npm install

EXPOSE 3000

CMD [ "node", "lib/app.js" ]
