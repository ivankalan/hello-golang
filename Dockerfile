FROM golang:1.21.6-alpine
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY *.go ./
RUN go build -o /hello-golang
EXPOSE 8080
CMD [ "/hello-golang" ]