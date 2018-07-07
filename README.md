# Simple ping service
Provides an RPC function 'ping' which returns back the string you give to it

## Build the protocol (already built in the repo)
make

## Run the service
go run main.go

## Test the service

Now we can test the service with grpcc

```
$ grpcc -i --proto ./proto/ping.proto --address localhost:50051

Connecting to go_ping_service.Ping on localhost:50051. Available globals:

  client - the client connection to Ping
    ping (Message, callback) returns Message

  printReply - function to easily print a unary call reply (alias: pr)
  streamReply - function to easily print stream call replies (alias: sr)
  createMetadata - convert JS objects into grpc metadata instances (alias: cm)
  printMetadata - function to easily print a unary call's metadata (alias: pm)

Ping@localhost:50051> (node:71731) DeprecationWarning: grpc.load: Use the @grpc/proto-loader module with grpc.loadPackageDefinition instead

Ping@localhost:50051> client.ping("this is a test", pr)
EventEmitter {}
Ping@localhost:50051> 
{
  "value": "this is a test"
}
Ping@localhost:50051> 
```
