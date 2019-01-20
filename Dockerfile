FROM golang:1.11.4-alpine3.8 AS builder
WORKDIR $GOPATH/src/github.com/uhayate/docker-tutorial
COPY . $GOPATH/src/github.com/uhayate/docker-tutorial
RUN go build -o /bin/app .

FROM alpine:3.8
COPY --from=builder /bin/app /bin/app
ENTRYPOINT  ["/bin/app"]