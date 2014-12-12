FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/Devided/Speedly-Arrival-Go
RUN cp /gopath/src/github.com/Devided/Speedly-Arrival-Go/Dockerfile /gopath
CMD docker build -t speedly-arrival-go gopath
