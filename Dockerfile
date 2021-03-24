FROM evrstr/sharelist
MAINTAINER evrstr <429427989yiqi@gmail.com>

ENV PORT 33001
EXPOSE 33001

RUN chmod -R 777 /sharelist/cache 

ADD deploy.sh /deploy.sh

RUN chmod +x /deploy.sh 

CMD /deploy.sh