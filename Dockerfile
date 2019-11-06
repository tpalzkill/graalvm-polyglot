FROM oracle/graalvm-ce:latest
WORKDIR /workdir
COPY ./polyglot-javascript-java-r/ /workdir
RUN npm install
RUN gu install R
EXPOSE 3000
CMD ["npm","start"]
