FROM golang:1.15.3
EXPOSE 2121-2130
WORKDIR /build
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN go build -o ftpserver .
RUN cp /build/ftpserver /bin/ftpserver
ENTRYPOINT [ "/bin/ftpserver" ]
