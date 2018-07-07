build:
	protoc -I. --go_out=plugins=grpc:$(GOPATH)/src/github.com/gt3389b/go_ping_service/ \
	  proto/ping.proto
