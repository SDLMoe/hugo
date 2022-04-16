# GitHub:       https://github.com/gohugoio
# Twitter:      https://twitter.com/gohugoio
# Website:      https://gohugo.io/

FROM alpine:latest

# Optionally set HUGO_BUILD_TAGS to "extended" or "nodeploy" when building like so:
#   docker build --build-arg HUGO_BUILD_TAGS=extended .

ENV CGO_ENABLED=1
ENV GOOS=linux

# gcc/g++ are required to build SASS libraries for extended version
RUN apk update && \
    apk add --no-cache gcc g++ musl-dev git ca-certificates libc6-compat libstdc++ && \
    git clone --depth 1 https://github.com/SDLMoe/hugo
    cd hugo
    sh build.sh
