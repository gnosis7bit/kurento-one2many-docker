FROM node:9.11.1

RUN mkdir /src
WORKDIR /src

RUN npm install npm -g
RUN npm install -g bower

RUN git clone https://github.com/Kurento/kurento-tutorial-node.git && \
    cd kurento-tutorial-node/kurento-one2many-call && \
    git checkout 6.6.1

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8443