FROM node:14-slim

RUN npm install -g truffle

WORKDIR app
COPY . ./

EXPOSE 9545

ENTRYPOINT ["truffle"]
CMD ["develop"]
# ENTRYPOINT ["bash"]