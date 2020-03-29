proto :
	protoc -I api/     -I${GOPATH}/src     --go_out=plugins=grpc:api     api/api.proto
lib :
	go get -u -v github.com/StephanieSunshine/go-grpc-boilerplate/api
	go get -u -v github.com/StephanieSunshine/go-grpc-boilerplate/server/actions
server :
	go build -o ${GOPATH}/bin/go-grpc-boilerplate-server server/main.go
client :
	go build -o ${GOPATH}/bin/go-grpc-boilerplate-client client/main.go



