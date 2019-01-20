FROM golang:1.11.4-alpine3.8

WORKDIR $GOPATH/src/github.com/uhayate/docker-tutorial

ADD . $GOPATH/src/github.com/uhayate/docker-tutorial

RUN go build -o /bin/app .

ENTRYPOINT  ["/bin/app"]