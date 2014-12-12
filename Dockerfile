FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/devided/speedly-arrival-go
RUN cp /gopath/src/github.com/devided/speedly-arrival-go/Dockerfile /gopath
CMD docker build -t speedly-arrival-go gopath
