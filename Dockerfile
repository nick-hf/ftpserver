FROM golang:1.15.3
EXPOSE 2121-2130
COPY . .
RUN go build
RUN mv ftpserver /bin/ftpserver
ENTRYPOINT [ "/bin/ftpserver" ]
