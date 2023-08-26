FROM alpine:edge

WORKDIR /workspace

COPY bin .

RUN apk update \
    && apk add g++ gfortran ninja 

RUN ninja

CMD ["./main"]