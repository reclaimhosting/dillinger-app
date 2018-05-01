FROM cloudron/base:0.10.0
MAINTAINER Tim Owens <tim@reclaimhosting.com>

ENV PATH /usr/local/node-6.9.5/bin:$PATH

RUN mkdir -p /app/code
WORKDIR /app/code

ENV PATH /usr/local/node-6.9.5/bin:$PATH

RUN git clone https://github.com/joemccann/dillinger.git .

RUN npm install --production

CMD [ "/usr/local/node-6.9.5/bin/node", "app" ]