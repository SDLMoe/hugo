CXX=g++ CC=gcc CGO_ENABLED=1 go build --tags extended -o ./build/hugo -trimpath -ldflags '-s -w -linkmode "external" -extldflags "-static"' .
