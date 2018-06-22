FROM debian:stable-slim

RUN apt-get update
RUN apt-get install -y golang git docker lsb-release

ENV GOPATH /usr/src/go
RUN go get github.com/optiopay/klar
WORKDIR $GOPATH/src/github.com/optiopay/klar

RUN CGO_ENABLED=0 go build -a -installsuffix cgo .

COPY klar.sh .

CMD [ "./klar.sh" ]