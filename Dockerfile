FROM node

RUN mkdir /skillbox
WORKDIR /skillbox

COPY package.json /skillbox
COPY yarn.lock /skillbox
RUN cd /skillbox && yarn install

RUN cd /skillbox && yarn test
RUN cd /skillbox && yarn build

EXPOSE 3000

CMD cd /skillbox && yarn start
