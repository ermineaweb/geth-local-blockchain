FROM node:14-slim

RUN npm install -g truffle

WORKDIR app
COPY app ./

EXPOSE 9545

ENTRYPOINT ["truffle"]
CMD ["console"]