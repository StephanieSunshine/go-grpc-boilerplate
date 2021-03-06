package actions

import (
	. "github.com/StephanieSunshine/go-grpc-boilerplate/api"
	"log"
	"context"
)

// SayHello generates response to a Ping request
func (s *Server) SayHello(ctx context.Context, in *PingMessage) (*PingMessage, error) {
  log.Printf("Receive message %s", in.Greeting)
  return &PingMessage{Greeting: "bar"}, nil
}

